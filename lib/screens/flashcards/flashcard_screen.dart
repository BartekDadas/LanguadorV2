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
  bool isCardFlipped = false;

  // @override
  // void initState() {
  //   super.initState();
  //   // context.read<FlashcardBloc>().add(
  //   //
  //   //     );
  // }

  @override
  void dispose() {
    controller.dispose();
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
            return state.map(
              initial: (_) => const Center(child: Text('Start learning!')),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              loaded: (loaded) => _buildFlashcards(loaded.flashcards),
              error: (error) => Center(child: Text(error.message)),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFlashcards(List<Flashcard> flashcards) {
    if (flashcards.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.school_outlined,
              size: 64,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              'No flashcards available',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Implement tutor functionality
              },
              icon: const Icon(Icons.chat_outlined),
              label: const Text('Talk to Tutor'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        Expanded(
          child: CardSwiper(
            cardsCount: flashcards.length,
            controller: controller,
            cardBuilder: (context, index, horizontalOffsetPercentage,
                verticalOffsetPercentage) {
              return _buildCard(flashcards[index]);
            },
            onSwipe: _onSwipe,
            padding: const EdgeInsets.all(24.0),
          ),
        ),
        _buildControls(),
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
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
      ),
    );
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    if (currentIndex == null) return false;

    final bloc = context.read<FlashcardBloc>();

    return bloc.state.maybeMap(
      loaded: (loadedState) {
        final flashcard = loadedState.flashcards[previousIndex];

        if (direction == CardSwiperDirection.right) {
          bloc.add(FlashcardEvent.markAsLearned(flashcardId: flashcard.id));
        } else if (direction == CardSwiperDirection.left) {
          bloc.add(FlashcardEvent.reviewLater(flashcardId: flashcard.id));
        }

        return true;
      },
      orElse: () => false,
    );
  }
}
