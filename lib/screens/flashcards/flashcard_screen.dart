import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:languador/services/ai_service.dart';
import '../../blocs/flashcard/flashcard_bloc.dart';
import '../../models/flashcard.dart';

class FlashcardScreen extends StatefulWidget {
  final String language;
  final String difficulty;

  const FlashcardScreen({
    super.key,
    required this.language,
    required this.difficulty,
  });

  @override
  State<FlashcardScreen> createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  final CardSwiperController controller = CardSwiperController();
  final TextEditingController _topicController = TextEditingController();
  bool isCardFlipped = false;

  @override
  void dispose() {
    controller.dispose();
    _topicController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FlashcardBloc(aiService: AIService())..add(
        FlashcardEvent.loadFlashcards(
          language: widget.language,
          difficulty: widget.difficulty,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Flashcards'),
              Text(
                widget.language.toUpperCase(),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
        body: BlocBuilder<FlashcardBloc, FlashcardState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.error != null) {
              return Center(child: Text(state.error!));
            }

            return SingleChildScrollView(
              child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        controller: _topicController,
                        decoration: InputDecoration(
                          hintText: 'What new words would you like to study?',
                          hintStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16.0,
                          ),
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 16.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      SizedBox(
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_topicController.text.trim().isNotEmpty) {
                              context.read<FlashcardBloc>().add(
                                FlashcardEvent.generateNewFlashcards(
                                  topic: _topicController.text.trim(),
                                  language: widget.language,
                                  difficulty: widget.difficulty,
                                ),
                              );
                              _topicController.clear();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32.0,
                              vertical: 12.0,
                            ),
                            elevation: 2,
                          ),
                          child: const Text(
                            'Generate',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: state.flashcards == null || state.flashcards!.isEmpty
                    ? _buildEmptyState()
                    : _buildFlashcards(state.flashcards!, context.read<FlashcardBloc>()),
                ),
              ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.school_outlined,
            size: 64,
            color: Colors.grey[400],
          ),
          // const SizedBox(height: 16),
          Text(
            'No flashcards available',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.grey[600],
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              context.read<FlashcardBloc>().add(
                FlashcardEvent.loadFlashcards(
                  language: widget.language,
                  difficulty: widget.difficulty,
                ),
              );
            },
            icon: const Icon(Icons.refresh),
            label: const Text('Reload'),
          ),
        ],
      ),
    );
  }

  Widget _buildFlashcards(List<Flashcard> flashcards, FlashcardBloc bloc) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: CardSwiper(
            onEnd: () => controller.dispose(),
            cardsCount: flashcards.length,
            controller: controller,
            cardBuilder: (context, index, horizontalOffsetPercentage,
                verticalOffsetPercentage) {
              return _buildCard(flashcards[index]);
            },
            onSwipe: (previousIndex, currentIndex, direction) => _onSwipe(
              bloc,
              previousIndex,
              currentIndex,
              direction,
            ),
            padding: const EdgeInsets.all(24.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: _buildControls(),
        ),
      ],
    );
  }

  Widget _buildCard(Flashcard flashcard) {
    return GestureDetector(
      onTap: () => setState(() => isCardFlipped = !isCardFlipped),
      child: Card(
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor.withOpacity(0.7),
                Theme.of(context).primaryColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (flashcard.imageUrl != null)
                Expanded(
                  flex: 2,
                  child: Image.network(
                    flashcard.imageUrl!,
                    fit: BoxFit.contain,
                  ),
                ),
              Expanded(
                flex: 3,
                child: Center(
                  child: Text(
                    isCardFlipped ? flashcard.back : flashcard.front,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              if (flashcard.example != null && isCardFlipped)
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    flashcard.example!,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => controller.swipe(CardSwiperDirection.left),
        ),
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () => controller.undo(),
        ),
        IconButton(
          icon: const Icon(Icons.check),
          onPressed: () => controller.swipe(CardSwiperDirection.right),
        ),
      ],
    );
  }

  bool _onSwipe(
    FlashcardBloc bloc,
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    if (currentIndex == null) return false;
    final flashcard = bloc.state.flashcards![previousIndex];
    if (direction == CardSwiperDirection.right) {
      bloc.add(FlashcardEvent.addFlashcard(flashcard: flashcard));
    } else if (direction == CardSwiperDirection.left) {
      bloc.add(FlashcardEvent.putAsideFlashcard(flashcard: flashcard));
    }
    return true;
  }
}
