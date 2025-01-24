import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../blocs/game/game_bloc.dart';
import '../../blocs/flashcard/flashcard_bloc.dart';
import '../../models/game/game_state.dart';
import '../../models/game/game_challenge.dart';
import '../../models/flashcard.dart';
import 'dart:math' as math;

class VocabularyQuestScreen extends StatefulWidget {
  final String deckName;
  
  const VocabularyQuestScreen({
    required this.deckName,
    super.key,
  });

  @override
  State<VocabularyQuestScreen> createState() => _VocabularyQuestScreenState();
}

class _VocabularyQuestScreenState extends State<VocabularyQuestScreen> with TickerProviderStateMixin {
  late DateTime _startTime;
  int _currentCardIndex = 0;
  List<Flashcard> _flashcards = [];
  int _playerHealth = 100;
  int _botHealth = 100;
  late AnimationController _playerHealthController;
  late AnimationController _botHealthController;
  late AnimationController _shakeController;
  String? _lastActionMessage;
  bool _isPlayerTurn = true;
  
  @override
  void initState() {
    super.initState();
    context.read<GameBloc>().add(
      const GameEvent.started(
        isMultiplayer: false,
      ),
    );
    context.read<FlashcardBloc>().add(FlashcardEvent.loadFlashcards(deckName: widget.deckName));
    _startTime = DateTime.now();
    _playerHealthController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _botHealthController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _playerHealthController.dispose();
    _botHealthController.dispose();
    _shakeController.dispose();
    super.dispose();
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
      if (isCorrect) {
        // Player deals damage to bot
        final damage = math.Random().nextInt(20) + 10; // Random damage between 10-30
        _botHealth = math.max(0, _botHealth - damage);
        _lastActionMessage = 'You dealt $damage damage!';
        _botHealthController.forward(from: 0.0);
      } else {
        // Bot deals damage to player
        final damage = math.Random().nextInt(15) + 5; // Random damage between 5-20
        _playerHealth = math.max(0, _playerHealth - damage);
        _lastActionMessage = 'Bot dealt $damage damage!';
        _playerHealthController.forward(from: 0.0);
      }

      if (_currentCardIndex < _flashcards.length - 1 && _playerHealth > 0 && _botHealth > 0) {
        _currentCardIndex++;
        context.read<GameBloc>().add(
          GameEvent.loadOptions(
            correctAnswer: _flashcards[_currentCardIndex].back,
          ),
        );
      } else {
        // End game when all cards are done or someone's health reaches 0
        context.read<GameBloc>().add(const GameEvent.ended());
      }
    });

    _shakeController.forward(from: 0.0);
  }

  Widget _buildHealthBar(double health, bool isPlayer) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001) // perspective
        ..rotateX(0.3) // slight tilt
        ..translate(0.0, -20.0, 0.0),
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Text(
              isPlayer ? 'You' : 'Bot',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Stack(
              children: [
                Container(
                  height: 25,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 20,
                  width: 150 * (health / 100),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        health > 50 
                          ? Colors.greenAccent 
                          : health > 25 
                            ? Colors.orangeAccent 
                            : Colors.redAccent,
                        health > 50 
                          ? Colors.green 
                          : health > 25 
                            ? Colors.orange 
                            : Colors.red,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Container(
                  height: 25,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white24,
                      width: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              '${health.toInt()} HP',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                shadows: [
                  Shadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
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
                extendBodyBehindAppBar: true,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  actions: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber),
                          const SizedBox(width: 4),
                          Text(
                            '${gameState.score}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                body: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF1a237e), Color(0xFF0d47a1)],
                    ),
                  ),
                  child: SafeArea(
                    child: switch (gameState.status) {
                      GameStatus.loading || GameStatus.loadingOptions => const Center(
                        child: CircularProgressIndicator(color: Colors.white),
                      ),
                      GameStatus.playing => _buildGameContent(context, gameState),
                      GameStatus.completed => _buildGameCompleted(context, gameState),
                      GameStatus.error => Center(
                        child: Text(
                          'Error: ${gameState.error ?? "Unknown error"}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      _ => const Center(
                        child: Text(
                          'Ready to start!',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    },
                  ),
                ),
              );
            },
          );
        },
    );
  }

  Widget _buildGameContent(BuildContext context, GameState gameState) {
    if (_flashcards.isEmpty) {
      return const Center(
        child: Text(
          'No flashcards available in this deck',
          style: TextStyle(color: Colors.white),
        ),
      );
    }

    if (_currentCardIndex >= _flashcards.length) {
      return const Center(
        child: Text(
          'No more cards!',
          style: TextStyle(color: Colors.white),
        ),
      );
    }

    final flashcard = _flashcards[_currentCardIndex];
    final options = gameState.currentOptions;

    if (options.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(color: Colors.white),
      );
    }

    return Stack(
      children: [
        // Background arena effect
        Positioned.fill(
          child: CustomPaint(
            painter: ArenaPainter(),
          ),
        ),
        Column(
          children: [
            // Top section with health bars
            Container(
              height: MediaQuery.of(context).size.height * 0.12, // Reduced height
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 0), // Adjusted padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: AnimatedBuilder(
                      animation: _playerHealthController,
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(
                            _playerHealthController.value * 10.0,
                            0.0,
                          ),
                          child: _buildHealthBar(_playerHealth.toDouble(), true),
                        );
                      },
                    ),
                  ),
                  if (_lastActionMessage != null)
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Text(
                            _lastActionMessage!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  Expanded(
                    flex: 2,
                    child: AnimatedBuilder(
                      animation: _botHealthController,
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(
                            -_botHealthController.value * 10.0,
                            0.0,
                          ),
                          child: _buildHealthBar(_botHealth.toDouble(), false),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Middle section with question card

            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                child: AnimatedBuilder(
                  animation: _shakeController,
                  builder: (context, child) {
                    return Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateX(-0.1)
                        ..translate(
                          math.sin(_shakeController.value * math.pi * 8) * 8,
                          0.0,
                          0.0,
                        ),
                      alignment: Alignment.center,
                      child: child,
                    );
                  },
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white.withOpacity(0.9),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 8.0,
                      ),
                      child: Column(
                        spacing: 8.0,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform(
                            transform: Matrix4.identity()
                              ..setEntry(2, 2, 0.001)
                              ..rotateX(-0.2),
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.sports_kabaddi,
                              size: 40,
                              color: Color(0xFF1a237e),
                            ),
                          ),
                          // const SizedBox(height: 16),
                          Text(
                            flashcard.front,
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              color: const Color(0xFF1a237e),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          // const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              'Choose your attack!',
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Bottom section with answer options
            Container(
              height: MediaQuery.of(context).size.height * 0.38,
              padding: const EdgeInsets.fromLTRB(12.0, 4.0, 12.0, 12.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      options.length,
                      (index) => SizedBox(
                        height: (constraints.maxHeight - 24) / 4,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3.0),
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 300 + (index * 100)),
                            opacity: 1.0,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                onPressed: () => _handleAnswer(options[index] == flashcard.back),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.white24,
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  elevation: 4,
                                ),
                                child: Text(
                                  options[index],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
      // ),
    );
  }

  Widget _buildGameCompleted(BuildContext context, GameState state) {
    final bool playerWon = _playerHealth > 0;
    
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.circle,
                size: 120,
                color: playerWon ? Colors.amber.withOpacity(0.3) : Colors.red.withOpacity(0.3),
              ),
              Icon(
                playerWon ? Icons.emoji_events : Icons.sentiment_dissatisfied,
                size: 80,
                color: playerWon ? Colors.amber : Colors.red,
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            playerWon ? 'Victory!' : 'Defeat!',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  'Final Score: ${state.score}',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  playerWon ? 'You defeated the bot!' : 'The bot defeated you!',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 48),
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pop(),
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color(0xFF1a237e),
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            icon: const Icon(Icons.replay),
            label: const Text(
              'Battle Again',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class ArenaPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    final center = Offset(size.width / 2, size.height / 2);
    const maxRadius = 800.0;
    const numberOfCircles = 8;

    for (var i = 0; i < numberOfCircles; i++) {
      final radius = maxRadius * (i + 1) / numberOfCircles;
      canvas.drawCircle(center, radius, paint);
    }

    // Draw diagonal lines
    paint.color = Colors.white.withOpacity(0.05);
    paint.strokeWidth = 2.0;

    // Draw lines from corners
    canvas.drawLine(Offset.zero, Offset(size.width, size.height), paint);
    canvas.drawLine(Offset(size.width, 0), Offset(0, size.height), paint);
    canvas.drawLine(Offset(size.width / 2, 0), Offset(size.width / 2, size.height), paint);
    canvas.drawLine(Offset(0, size.height / 2), Offset(size.width, size.height / 2), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
