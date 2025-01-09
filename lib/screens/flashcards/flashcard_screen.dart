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
      FlashcardEvent.loadFlashcards(
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
        body: BlocBuilder<FlashcardBloc, FlashcardState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(state.error!, style: const TextStyle(color: Colors.white)),
                ),
              );
              return RefreshView(
                onRefresh: () async {
                  context.read<FlashcardBloc>().add(
                    FlashcardEvent.loadFlashcards(
                      // language: state.language,
                      // difficulty: state.difficulty,
                    ),
                  );
                },
                child: Align(child: Text(state.error!)),
              );
            }

            if (state.generated != null && state.generated!.isNotEmpty) {
              return Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: CardSwiper(
                          onEnd: () {},
                          cardsCount: state.generated!.length,
                          controller: context.read<FlashcardBloc>().cardController,
                          cardBuilder: (context, index, horizontalOffsetPercentage, verticalOffsetPercentage) {
                            return _buildCard(state.generated![index], context);
                          },
                          onSwipe: (previousIndex, currentIndex, direction) => _onSwipe(
                            context,
                            previousIndex,
                            currentIndex,
                            direction,
                          ),
                        ),
                      ),
                      _buildControlButtons(),
                    ],
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.grey),
                      onPressed: () {
                        // context.read<FlashcardBloc>().add(
                          // FlashcardEvent.loadFlashcards(
                          //   // language: state.language,
                          //   // difficulty: state.difficulty,
                          // ),
                        // );
                      },
                    ),
                  ),
                ],
              );
            }

            return SingleChildScrollView(
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
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: CardSwiper(
            onEnd: () {},
            cardsCount: flashcards.length,
            controller: context.read<FlashcardBloc>().cardController,
            cardBuilder: (context, index, horizontalOffsetPercentage, verticalOffsetPercentage) {
              return _buildCard(flashcards[index], context);
            },
            onSwipe: (_, __, ___) => false,
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
                    padding: const EdgeInsets.all(24.0),
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
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    flashcard.imageUrl!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            const SizedBox(height: 20),
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
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
                                  ),
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
    print('${context.read<FlashcardBloc>().state.generated![previousIndex]}');
    if (currentIndex == null) return false;
    final bloc = context.read<FlashcardBloc>();
    final flashcard = bloc.state.generated![previousIndex];
    if (direction == CardSwiperDirection.right) {
      print('right');
      bloc.add(FlashcardEvent.addFlashcard(flashcard: flashcard));
    } else if (direction == CardSwiperDirection.left) {
      print('left');
      bloc.add(FlashcardEvent.putAsideFlashcard(flashcard: flashcard));
    }
    return true;
  }
}
