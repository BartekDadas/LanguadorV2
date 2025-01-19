// import 'package:firebase_auth/firebase_auth.dart' hide AuthProvider;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get_it/get_it.dart';
import 'package:languador/services/auth_service.dart';
import 'package:languador/widgets/refresh_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../blocs/flashcard/flashcard_bloc.dart';
import '../../blocs/flashcard/flashcard_cubit.dart';
import '../../models/flashcard.dart';
import '../../providers/auth_provider.dart';
import '../../services/deck_service.dart';
import 'deck_selection_dialog.dart';

final _getIt = GetIt.I;

class FlashcardScreen extends StatelessWidget {
  // final String language;
  // final String difficulty;
  final TextEditingController inputController = TextEditingController();
  final FlashcardCubit _flashcardCubit = FlashcardCubit();

  FlashcardScreen({
    // required this.language,
    // required this.difficulty,
    super.key,
  });

  Future<String?> _showDeckSelection(BuildContext context) async {
    try {
      // Try to get SharedPreferences asynchronously
      final prefs = await GetIt.I.getAsync<SharedPreferences>();
      final deckService = DeckService(prefs);
      
      if (!context.mounted) return null;
      
      return showDialog<String?>(
        context: context,
        builder: (dialogContext) => DeckSelectionDialog(
          deckService: deckService,
          onDeckSelected: (deckName) => deckName,
          currentDeckName: context.read<FlashcardBloc>().state.deckName,
        ),
      );
    } catch (e) {
      if (!context.mounted) return null;
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to load deck service. Please try again.'),
          backgroundColor: Colors.red,
        ),
      );
      return null;
    }
  }

  void changeDeckName(String deckName, BuildContext context) {
    context.read<FlashcardBloc>().add(FlashcardEvent.changeDeck(deckName: deckName));
  }

  @override
  Widget build(BuildContext context) {
    final bloc = GetIt.I.get<FlashcardBloc>()..add(
      const FlashcardEvent.loadFlashcards(
        // language: _getIt.get<AuthService>().currentUser? .code ?? 'en',
        // difficulty: _getIt.get<AuthProvider>().user?.level == 1? 'beginner' : '',
      ),
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: bloc),
        BlocProvider.value(value: _flashcardCubit),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Flashcards'),
              BlocBuilder<FlashcardBloc, FlashcardState>(
                builder: (context, state) {
                  return Text(
                    "${state.deckName ?? ''} ${state.language.toUpperCase()}",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[300],
                    ),
                  );
                },
              ),
            ],
          ),
          actions: [
            BlocBuilder<FlashcardBloc, FlashcardState>(
              builder: (context, state) => IconButton(
                icon: state.isLoading 
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.refresh),
                onPressed: state.isLoading
                    ? null 
                    : () => context.read<FlashcardBloc>().add(
                          const FlashcardEvent.loadFlashcards(),
                        ),
              ),
            ),
            BlocBuilder<FlashcardBloc, FlashcardState>(
              builder: (context, state) => IconButton(
                icon: const Icon(Icons.folder_copy_sharp),
                onPressed: () async {
                  bool isContextMounted() => context.mounted;
                  
                  final deckName = await _showDeckSelection(context);
                  if (deckName != null && isContextMounted()) {
                    changeDeckName(deckName, context);
                  }
                },
                tooltip: 'Create or Select Deck',
              ),
            ),
          ],
        ),
        body: BlocConsumer<FlashcardBloc, FlashcardState>(
          listener: (context, state) {
            if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error!),
                  backgroundColor: Colors.red,
                  action: SnackBarAction(
                    label: 'Retry',
                    textColor: Colors.white,
                    onPressed: () {
                      context.read<FlashcardBloc>().add(
                        const FlashcardEvent.loadFlashcards(),
                      );
                    },
                  ),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            // Show generated flashcards in a separate view
            if (state.generated != null && state.generated!.isNotEmpty) {
              final cards = state.generated!;
              print(cards.length);
              if (cards.isEmpty) {
                // Return to the main flashcards view when no generated cards are left
                context.read<FlashcardBloc>().add(
                  const FlashcardEvent.loadFlashcards(),
                );
                return const Center(child: CircularProgressIndicator());
              }
              return Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        if (cards.isNotEmpty) CardSwiper(
                          numberOfCardsDisplayed: () {
                            final result = cards.length > 1 ? 2 : 1;
                            print("${cards.length} > 1 ? 2 : 1 = $result");
                            return result;
                          }(),
                          cardsCount: cards.length,
                          controller: context.read<FlashcardBloc>().cardController,
                          cardBuilder: (context, index, horizontalOffsetPercentage, verticalOffsetPercentage) {
                            if (index >= cards.length) {
                              return const SizedBox.shrink();
                            }
                            return _buildCard(cards[index], context);
                          },
                          allowedSwipeDirection: const AllowedSwipeDirection.symmetric(horizontal: true),
                          onSwipe: (previousIndex, currentIndex, direction) =>
                            _onSwipe(
                              context,
                              previousIndex,
                              currentIndex,
                              direction,
                            ),
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.05,
                            vertical: MediaQuery.of(context).size.height * 0.02,
                          ),
                        ),
                        // Instructions card at the top
                        Positioned(
                          top: 16,
                          left: 16,
                          right: 16,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.swipe, color: Colors.white),
                                SizedBox(width: 8),
                                Text(
                                  'Swipe or use buttons below to manage cards',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: IconButton(
                            icon: const Icon(Icons.close, color: Colors.grey),
                            onPressed: () {
                              context.read<FlashcardBloc>().add(
                                const FlashcardEvent.loadFlashcards(),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Control buttons at the bottom
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildActionButton(
                          context,
                          Icons.close,
                          Colors.red,
                          () {
                            if (cards.isNotEmpty) {
                              context.read<FlashcardBloc>().add(
                                FlashcardEvent.putAsideFlashcard(
                                  flashcard: cards[state.currentIndex],
                                ),
                              );
                            }
                          },
                          'Discard',
                        ),
                        _buildActionButton(
                          context,
                          Icons.add,
                          Colors.green,
                          () {
                            if (cards.isNotEmpty) {
                              context.read<FlashcardBloc>().add(
                                FlashcardEvent.addFlashcard(
                                  flashcard: cards[state.currentIndex],
                                ),
                              );
                            }
                          },
                          'Add to Deck',
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }

            if (state.flashcards?.isEmpty ?? true) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('No flashcards available'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        context.read<FlashcardBloc>().add(
                          const FlashcardEvent.loadFlashcards(),
                        );
                      },
                      child: const Text('Refresh'),
                    ),
                  ],
                ),
              );
            }

            // Combine both generated and regular flashcards
            final allCards = state.flashcards ?? [];

            if (allCards.isNotEmpty) {
              if (allCards.isEmpty) {
                context.read<FlashcardBloc>().add(
                  const FlashcardEvent.loadFlashcards(),
                );
                return const Center(child: CircularProgressIndicator());
              }

              return RefreshIndicator(
                onRefresh: () async {
                  context.read<FlashcardBloc>().add(
                    const FlashcardEvent.loadFlashcards(),
                  );
                },
                child: SingleChildScrollView(
                  child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextField(
                            controller: inputController,
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
                                if (inputController.text.trim().isNotEmpty) {
                                  context.read<FlashcardBloc>().add(
                                    FlashcardEvent.generateNewFlashcards(
                                      topic: inputController.text.trim(),
                                      language: state.language,
                                      difficulty: state.difficulty,
                                    ),
                                  );
                                  inputController.clear();
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
                      child: _buildFlashcards(allCards, context),
                    ),
                    ],
                  ),
                ),
              );
            }

            return RefreshIndicator(
              onRefresh: () async {
                context.read<FlashcardBloc>().add(
                  const FlashcardEvent.loadFlashcards(),
                );
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextField(
                            controller: inputController,
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
                                // final textController = TextEditingController();
                                if (inputController.text.trim().isNotEmpty) {
                                  print('Clicked');
                                  context.read<FlashcardBloc>().add(
                                    FlashcardEvent.generateNewFlashcards(
                                      topic: inputController.text.trim(),
                                      language: state.language,
                                      difficulty: state.difficulty,
                                    ),
                                  );
                                  inputController.clear();
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
                          ? _buildEmptyState(context)
                          : _buildFlashcards(state.flashcards!, context),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
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
          Text(
            'No flashcards available',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.grey[600],
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              final bloc = context.read<FlashcardBloc>();
              bloc.add(
                const FlashcardEvent.loadFlashcards(
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

  Widget _buildFlashcards(List<Flashcard> flashcards, BuildContext context) {
    if (flashcards.isEmpty) {
      context.read<FlashcardBloc>().add(
        const FlashcardEvent.loadFlashcards(),
      );
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: CardSwiper(
            numberOfCardsDisplayed: 1,
            onEnd: () {
              context.read<FlashcardBloc>().add(
                const FlashcardEvent.loadFlashcards(),
              );
            },
            cardsCount: flashcards.length,
            controller: context.read<FlashcardBloc>().cardController,
            cardBuilder: (context, index, horizontalOffsetPercentage, verticalOffsetPercentage) {
              if (index >= flashcards.length) {
                return const SizedBox.shrink();
              }
              return _buildCard(flashcards[index], context);
            },
            onSwipe: (_, __, ___) => false,
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.02,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _buildControls(),
        ),
      ],
    );
  }

  Widget _buildCard(Flashcard flashcard, BuildContext context) {
    return BlocBuilder<FlashcardCubit, FlashcardCubitState>(
      builder: (context, flipState) {
        return GestureDetector(
          onTap: () => context.read<FlashcardCubit>().toggleCard(flashcard.id),
          child: TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0,
              end: flipState.flippedCards[flashcard.id] ?? false ? 180 : 0,
            ),
            duration: const Duration(milliseconds: 300),
            builder: (context, double value, child) {
              var content = value >= 90 ? flashcard.back : flashcard.front;
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY((value * 3.1415927 / 180)),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).primaryColor.withOpacity(0.8),
                          Theme.of(context).primaryColor,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).primaryColor.withOpacity(0.3),
                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 16,
                          right: 16,
                          child: Icon(
                            Icons.flip,
                            color: Colors.white.withOpacity(0.3),
                            size: 24,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (flashcard.imageUrl != null && !flipState.flippedCards[flashcard.id]!)
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      flashcard.imageUrl!,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            Expanded(
                              flex: 3,
                              child: Center(
                                child: Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.identity()
                                    ..rotateY(value >= 90 ? 3.1415927 : 0),
                                  child: Text(
                                    content,
                                    style: const TextStyle(
                                      fontSize: 28,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            if (flashcard.example != null && !(flipState.flippedCards[flashcard.id] ?? false))
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                margin: const EdgeInsets.only(top: 8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  flashcard.example!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  textAlign: TextAlign.center,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.check),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildControlButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.check),
          onPressed: () {},
        ),
      ],
    );
  }

  bool _onSwipe(
    BuildContext context,
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    if (currentIndex == null) return false;
    
    final bloc = context.read<FlashcardBloc>();
    final state = bloc.state;
    
    // Get the combined list of cards
    final allCards = state.generated ?? state.flashcards!;
    
    // Check if the index is valid
    if (previousIndex >= allCards.length) return false;
    
    final flashcard = allCards[previousIndex];
    
    // Only allow swiping on regular flashcards, not generated ones
    if (state.generated != null && state.generated!.contains(flashcard)) {
      // For generated flashcards, show a confirmation dialog
      if (direction == CardSwiperDirection.right) {
        // Add the card and check if it's the last one
        bloc.add(FlashcardEvent.addFlashcard(flashcard: flashcard));
        // if (state.generated!.length == 1) {
        //   // If this was the last card, return to main view
        //   bloc.add(const FlashcardEvent.loadFlashcards());
        // }
      } else if (direction == CardSwiperDirection.left) {
        // Put aside the card and check if it's the last one
        bloc.add(FlashcardEvent.putAsideFlashcard(flashcard: flashcard));
        // if (state.generated!.length == 1) {
        //   // If this was the last card, return to main view
        //   bloc.add(const FlashcardEvent.loadFlashcards());
        // }
      }
    } else {
      // Handle regular flashcards
      if (direction == CardSwiperDirection.right) {
        bloc.add(FlashcardEvent.addFlashcard(flashcard: flashcard));
      } else if (direction == CardSwiperDirection.left) {
        bloc.add(FlashcardEvent.putAsideFlashcard(flashcard: flashcard));
      }
    }
    
    return true;
  }

  Widget _buildActionButton(
    BuildContext context,
    IconData icon,
    Color color,
    VoidCallback onPressed,
    String label,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(icon, color: color),
            onPressed: onPressed,
            iconSize: 32,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
