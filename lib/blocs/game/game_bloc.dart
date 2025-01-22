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
      
      // Try to get options from AI service
      try {
        final wrongAnswers = await _aiService.generateWrongAnswers(
          goodAnswer: event.correctAnswer,
        );
        print(wrongAnswers);
        if (wrongAnswers.isNotEmpty) {
          List<String> options = [event.correctAnswer, ...wrongAnswers.take(3)];
          options.shuffle();
          emit(state.copyWith(
            status: GameStatus.playing,
            currentOptions: options,
          ));
          return;
        }
      } catch (e) {
        print('Error generating wrong answers: $e');
      }
      
      // Fallback to simple modifications if AI service fails
      List<String> options = [event.correctAnswer];
      options.add(event.correctAnswer + ' (wrong)');
      options.add('not ' + event.correctAnswer);
      options.add(event.correctAnswer + ' 2');
      options.shuffle();
      
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
