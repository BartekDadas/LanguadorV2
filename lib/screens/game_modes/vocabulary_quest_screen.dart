import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/game/game_bloc.dart';
import '../../blocs/flashcard/flashcard_bloc.dart';
import '../../models/game/game_state.dart';
import '../../models/game/game_challenge.dart';
import '../../models/flashcard.dart';

class VocabularyQuestScreen extends StatefulWidget {
  final String deckName;
  
  const VocabularyQuestScreen({
    required this.deckName,
    super.key,
  });

  @override
  State<VocabularyQuestScreen> createState() => _VocabularyQuestScreenState();
}

class _VocabularyQuestScreenState extends State<VocabularyQuestScreen> {
  late DateTime _startTime;
  int _currentCardIndex = 0;
  List<Flashcard> _flashcards = [];
  
  @override
  void initState() {
    super.initState();
    _startTime = DateTime.now();
    context.read<GameBloc>().add(
      const GameEvent.started(
        isMultiplayer: false,
      ),
    );
    context.read<FlashcardBloc>().add(FlashcardEvent.loadFlashcards(deckName: widget.deckName));
  }

  void _handleAnswer(bool isCorrect) {
    final timeSpent = DateTime.now().difference(_startTime);
    context.read<GameBloc>().add(
      GameEvent.answerSubmitted(
        isCorrect: isCorrect,
        timeSpent: timeSpent,
      ),
    );
    _startTime = DateTime.now();
    
    setState(() {
      if (_currentCardIndex < _flashcards.length - 1) {
        _currentCardIndex++;
        // Load options for the next card
        context.read<GameBloc>().add(
          GameEvent.loadOptions(
            correctAnswer: _flashcards[_currentCardIndex].back,
          ),
        );
      } else {
        // End game when all cards are done
        context.read<GameBloc>().add(const GameEvent.ended());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FlashcardBloc, FlashcardState>(
      listener: (context, flashcardState) {
        if (flashcardState.flashcards != null && flashcardState.flashcards!.isNotEmpty) {
          final flashcards = List<Flashcard>.from(flashcardState.flashcards!)..shuffle();
          setState(() {
            _flashcards = flashcards;
          });
          // Load options for the first card
          context.read<GameBloc>().add(
            GameEvent.loadOptions(
              correctAnswer: flashcards[0].back,
            ),
          );
        }
      },
      builder: (context, flashcardState) {
        return BlocBuilder<GameBloc, GameState>(
          builder: (context, gameState) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Vocabulary Quest'),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Score: ${gameState.score}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              body: switch (gameState.status) {
                GameStatus.loading => const Center(
                    child: CircularProgressIndicator(),
                  ),
                GameStatus.loadingOptions => const Center(
                    child: CircularProgressIndicator(),
                  ),
                GameStatus.playing => _buildGameContent(context, gameState),
                GameStatus.completed => _buildGameCompleted(context, gameState),
                GameStatus.error => Center(
                    child: Text('Error: ${gameState.error ?? "Unknown error"}'),
                  ),
                _ => const Center(
                    child: Text('Ready to start!'),
                  ),
              },
            );
          },
        );
      },
    );
  }

  Widget _buildGameContent(BuildContext context, GameState gameState) {
    if (_flashcards.isEmpty) {
      return const Center(
        child: Text('No flashcards available in this deck'),
      );
    }

    if (_currentCardIndex >= _flashcards.length) {
      return const Center(
        child: Text('No more cards!'),
      );
    }

    final flashcard = _flashcards[_currentCardIndex];
    final options = gameState.currentOptions;

    if (options.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'What is the meaning of "${flashcard.front}"?',
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ...options.map((option) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ElevatedButton(
                      onPressed: () => _handleAnswer(option == flashcard.back),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(option),
                    ),
                  )),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Card ${_currentCardIndex + 1} of ${_flashcards.length}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  Widget _buildGameCompleted(BuildContext context, GameState state) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.emoji_events,
            size: 64,
            color: Colors.amber,
          ),
          const SizedBox(height: 16),
          Text(
            'Game Completed!',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Final Score: ${state.score}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Back to Game Modes'),
          ),
        ],
      ),
    );
  }
}
