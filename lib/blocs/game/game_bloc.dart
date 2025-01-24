import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/game/game_state.dart';
import '../../models/game/game_challenge.dart';
import '../../services/ai_service.dart';
import '../../models/flashcard.dart';

part 'game_bloc.freezed.dart';
part 'game_event.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final FirebaseFirestore _firestore;
  final AIService _aiService;

  GameBloc({
    required FirebaseFirestore firestore,
    required AIService aiService,
  })  : _firestore = firestore,
        _aiService = aiService,
        super(const GameState()) {
    on<GameStarted>(_onGameStarted);
    on<GameAnswerSubmitted>(_onGameAnswerSubmitted);
    on<GamePaused>(_onGamePaused);
    on<GameResumed>(_onGameResumed);
    on<GameEnded>(_onGameEnded);
    on<LoadOptions>(_onLoadOptions);
  }

  Future<void> _onGameStarted(
    GameStarted event,
    Emitter<GameState> emit,
  ) async {
    try {
      emit(state.copyWith(status: GameStatus.loading));
      
      // Initialize game state based on mode
      emit(state.copyWith(
        status: GameStatus.playing,
        isMultiplayer: event.isMultiplayer,
        score: 0,
      ));
    } catch (error) {
      emit(state.copyWith(
        status: GameStatus.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> _onLoadOptions(
    LoadOptions event,
    Emitter<GameState> emit,
  ) async {
    try {
      emit(state.copyWith(status: GameStatus.loadingOptions));
      
      List<String> options = [event.correctAnswer];
      
      // Try to get options from AI service
      try {
        final wrongAnswers = await _aiService.generateWrongAnswers(
          goodAnswer: event.correctAnswer,
        );
        
        if (wrongAnswers.length >= 3) {
          // If AI service returns enough options, use them
          options.addAll(wrongAnswers.take(3));
        } else {
          // If AI service doesn't return enough options, use fallback
          final remainingCount = 3 - wrongAnswers.length;
          options.addAll(wrongAnswers);
          
          // Add fallback options if needed
          final fallbackOptions = [
            'not ' + event.correctAnswer,
            event.correctAnswer + ' (incorrect)',
            _modifyAnswer(event.correctAnswer),
          ];
          
          options.addAll(fallbackOptions.take(remainingCount));
        }
      } catch (e) {
        print('Error generating wrong answers: $e');
        // Complete fallback if AI service fails
        options.addAll([
          'not ' + event.correctAnswer,
          event.correctAnswer + ' (incorrect)',
          _modifyAnswer(event.correctAnswer),
        ]);
      }
      
      // Always ensure we have exactly 4 options
      options = options.take(4).toList()..shuffle();
      
      emit(state.copyWith(
        status: GameStatus.playing,
        currentOptions: options,
      ));
    } catch (error) {
      emit(state.copyWith(
        status: GameStatus.error,
        error: error.toString(),
      ));
    }
  }

  String _modifyAnswer(String answer) {
    if (answer.length > 3) {
      // Swap two random characters
      final chars = answer.split('');
      final i = chars.length ~/ 2;
      final temp = chars[i];
      chars[i] = chars[i - 1];
      chars[i - 1] = temp;
      return chars.join('');
    } else {
      return answer + ' (other)';
    }
  }

  Future<void> _onGameAnswerSubmitted(
    GameAnswerSubmitted event,
    Emitter<GameState> emit,
  ) async {
    try {
      // Calculate points based on answer correctness and time
      final points = event.isCorrect ? _calculatePoints(event.timeSpent) : 0;
      
      // Update score and XP
      emit(state.copyWith(
        score: state.score + points,
        xp: state.xp + points,
      ));

      // Check for level up
      final newLevel = _calculateLevel(state.xp);
      if (newLevel > state.level) {
        emit(state.copyWith(level: newLevel));
      }
    } catch (error) {
      emit(state.copyWith(
        status: GameStatus.error,
        error: error.toString(),
      ));
    }
  }

  void _onGamePaused(GamePaused event, Emitter<GameState> emit) {
    emit(state.copyWith(status: GameStatus.paused));
  }

  void _onGameResumed(GameResumed event, Emitter<GameState> emit) {
    emit(state.copyWith(status: GameStatus.playing));
  }

  Future<void> _onGameEnded(
    GameEnded event,
    Emitter<GameState> emit,
  ) async {
    try {
      emit(state.copyWith(status: GameStatus.completed));
      
      // Save game results to Firestore
      if (event.userId != null) {
        await _saveGameResults(event.userId!, state.score, state.xp);
      }
    } catch (error) {
      emit(state.copyWith(
        status: GameStatus.error,
        error: error.toString(),
      ));
    }
  }

  int _calculatePoints(Duration timeSpent) {
    // Base points for correct answer
    const basePoints = 100;
    
    // Time bonus: faster answers get more points
    final timeBonus = (30 - timeSpent.inSeconds).clamp(0, 30) * 10;
    
    return basePoints + timeBonus;
  }

  int _calculateLevel(int xp) {
    // Simple level calculation: every 1000 XP is a new level
    return (xp / 1000).floor() + 1;
  }

  Future<void> _saveGameResults(String userId, int score, int xp) async {
    await _firestore.collection('game_results').add({
      'userId': userId,
      'score': score,
      'xp': xp,
      'timestamp': FieldValue.serverTimestamp(),
      'isMultiplayer': state.isMultiplayer,
    });

    // Update user's total XP
    await _firestore.collection('users').doc(userId).update({
      'totalXp': FieldValue.increment(xp),
    });
  }
}
