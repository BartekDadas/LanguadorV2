import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:languador/models/user_model.dart';
import 'package:languador/providers/flashcards_provider.dart';
import 'package:languador/services/local_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/flashcard.dart';
import '../../services/ai_service.dart';
import '../../services/deck_service.dart';

part 'flashcard_bloc.freezed.dart';
part 'flashcard_event.dart';
part 'flashcard_state.dart';

class FlashcardBloc extends Bloc<FlashcardEvent, FlashcardState> {
  final AIService _aiService;
  final LocalStorageService _storageService;
  late final DeckService deckService;
  UserModel? userModel;
  final CardSwiperController cardController = CardSwiperController();

  FlashcardBloc({
    required AIService aiService,
    LocalStorageService? storageService,
  })  : _aiService = aiService,
        _storageService = storageService ?? LocalStorageService(),
        super(const FlashcardState()) {
    _initServices();
    on<FlashcardEvent>((event, emit) async {
      await event.map(
        loadFlashcards: (e) => _onLoadFlashcards(e, emit),
        markAsLearned: (e) => _onMarkAsLearned(e, emit),
        reviewLater: (e) => _onReviewLater(e, emit),
        addFlashcard: (e) => _onAddFlashcard(e, emit),
        putAsideFlashcard: (e) => _onPutAsideFlashcard(e, emit),
        deleteFlashcards: (e) => _onDeleteFlashcard(e, emit),
        generateNewFlashcards: (e) => _onGenerateNewFlashcards(e, emit),
        loadDeckFlashcards: (e) => _onLoadDeckFlashcards(e, emit),
        saveToDeck: (e) => _onSaveToDeck(e, emit),
        changeDeck: (e) => _onChangeDeck(e, emit),
        updateCurrentIndex: (e) => _onUpdateCurrentIndex(e, emit),
      );
    });
  }

  Future<void> _initServices() async {
    try {
      final prefs = await GetIt.I.getAsync<SharedPreferences>();
      deckService = DeckService(prefs);
      userModel = await GetIt.I.getAsync<UserModel>();
    } catch (e) {
      // Handle initialization error
      print('Error initializing services: $e');
    }
  }

  Future<void> _ensureUserModelInitialized() async {
    if (userModel == null) {
      try {
        userModel = await GetIt.I.getAsync<UserModel>();
      } catch (e) {
        throw Exception('Failed to initialize user model');
      }
    }
  }

  Future<void> _onLoadFlashcards(
    _LoadFlashcards event,
    Emitter<FlashcardState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));

      await _ensureUserModelInitialized();
      if (userModel == null) {
        emit(state.copyWith(
          isLoading: false,
          error: 'Failed to initialize user settings. Please try again.',
        ));
        return;
      }

      final deckName = event.deckName ?? state.deckName;
      
      try {
        final localFlashcards = await _storageService.getFlashcards(deckName);
        emit(state.copyWith(
          error: null,
          language: userModel!.learningLanguages[0].code,
          difficulty: userModel!.level == 1 ? 'beginner' : 'intermediate',
          isLoading: false,
          flashcards: localFlashcards,
          // learned: [],
          deckName: deckName,
          // currentIndex: state.currentIndex.clamp(0, localFlashcards.length - 1)
        ));
      } catch (e) {
        print("Error: $e");
        emit(state.copyWith(
          isLoading: false,
          error: 'Failed to load flashcards. Please check your connection and try again.',
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: 'An unexpected error occurred. Please try again.',
      ));
    }
  }

  Future<void> _onGenerateNewFlashcards(
    _GenerateFlashcards event,
    Emitter<FlashcardState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true));
      final flashcards = await _aiService.generateFlashcards(
        topic: event.topic,
        targetLanguage: event.language,
        difficulty: event.difficulty,
      );

      if (flashcards.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          generated: flashcards,
          error: null,
        ));
      } else {
        emit(state.copyWith(
          isLoading: false,
          error: 'No flashcards were generated. Please try again with a different topic.',
        ));
      }
    } catch (error) {
      emit(state.copyWith(
        isLoading: false,
        error: 'Failed to generate flashcards. Please try again.',
      ));
    }
  }

  Future<void> _onMarkAsLearned(
    _MarkAsLearned event,
    Emitter<FlashcardState> emit,
  ) async {
    if (state.flashcards != null) {
      final updatedFlashcards = state.flashcards!.map((flashcard) {
        if (flashcard.id == event.flashcardId) {
          return flashcard.copyWith(isLearned: true);
        }
        return flashcard;
      }).toList();
      
      await _storageService.saveFlashcards(updatedFlashcards, state.deckName);
      emit(state.copyWith(flashcards: updatedFlashcards));
    }
  }

  Future<void> _onReviewLater(
    _ReviewLater event,
    Emitter<FlashcardState> emit,
  ) async {
    if (state.flashcards != null) {
      final reviewedFlashcard = state.flashcards!.firstWhere(
        (f) => f.id == event.flashcardId,
      );

      final deckName = state.deckName;

      final updatedFlashcards = List<Flashcard>.from(state.flashcards!)
        ..remove(reviewedFlashcard);

      // final updatedFlashcards = List<Flashcard>.from(state.flashcards!)
      //   ..add(reviewedFlashcard);

      // final generatedFlashcards = state.generated ?? [];

      await _storageService.saveFlashcards(updatedFlashcards, deckName);
      await _storageService.saveLearnedFlashcards(
        List.from(state.learned ?? [])..add(reviewedFlashcard),
        deckName,
      );
      
      emit(state.copyWith(
        flashcards: updatedFlashcards,
        learned: List.from(state.learned ?? [])..add(reviewedFlashcard),
        currentIndex: state.currentIndex.clamp(0, updatedFlashcards.length - 1)
      ));
    }
  }

  Future<void> _onAddFlashcard(
    _AddFlashcard event,
    Emitter<FlashcardState> emit,
  ) async {
    try {
      final flashcard = event.flashcard;
      
      // Modify lists in place when possible
      final List<Flashcard> currentFlashcards = List.from(state.flashcards ?? []);
      if (!currentFlashcards.contains(flashcard)) {
        currentFlashcards.add(flashcard);
      }

      // Handle generated cards
      if (state.generated != null) {
        final List<Flashcard> currentGenerated = List.from(state.generated!);
        currentGenerated.remove(flashcard);

        // Save to storage
        await _storageService.saveFlashcards(currentFlashcards, state.deckName);

        // Single state update with all changes
        if (currentGenerated.isEmpty) {
          emit(state.copyWith(
            flashcards: currentFlashcards,
            generated: null,
            // currentIndex: 0,
          ));
        } else {
          cardController.moveTo(0);
          emit(state.copyWith(
            generated: currentGenerated,
            // currentIndex: 0,
          ));
        }
      } else {
        // Save and update state
        await _storageService.saveFlashcards(currentFlashcards, state.deckName);
        emit(state.copyWith(
          flashcards: currentFlashcards,
          // currentIndex: 0,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        error: 'Failed to add flashcard to deck. Please try again.',
      ));
    }
  }

  Future<void> _onPutAsideFlashcard(
    _PutAsideFlashcard event,
    Emitter<FlashcardState> emit,
  ) async {
    try {
      final flashcard = event.flashcard;
      List<Flashcard> putAside = List.from(state.putAside ?? []);

      putAside.add(flashcard);

      // If it's a generated flashcard, modify the list in place
      if (state.generated?.contains(flashcard) ?? false) {
        final List<Flashcard> currentGenerated = List.from(state.generated!);
        currentGenerated.remove(flashcard);

        // If this was the last generated card, clear the generated state
        if (currentGenerated.isEmpty) {
          emit(state.copyWith(
            putAside: putAside,
            generated: null,
            // currentIndex: 0,
          ));
        } else {
          // Single state update with all changes
          cardController.moveTo(0);
          emit(state.copyWith(
            putAside: putAside,
            generated: currentGenerated,
            // currentIndex: 0,
          ));
        }
        return;
      }

      // Otherwise handle as regular flashcard
      emit(state.copyWith(
        putAside: putAside,
      ));
    } catch (e) {
      print('Error: $e');
      emit(state.copyWith(
        error: 'Failed to put flashcard aside. Please try again.',
      ));
    }
  }

  Future<void> _onDeleteFlashcard(
    _DeleteFlashcard event,
    Emitter<FlashcardState> emit,
  ) async {
    await _storageService.clearAllData();
    emit(state.copyWith(learned: null, flashcards: null));
  }

  Future<void> _onLoadDeckFlashcards(
    _LoadDeckFlashcards event,
    Emitter<FlashcardState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true));
      final flashcards = await event.deckService.getDeckFlashcards(event.deckName);
      emit(state.copyWith(
        isLoading: false,
        error: null,
        flashcards: flashcards,
      ));
    } catch (error) {
      print("(LoadDeckFlashcards) Error: $error");
      emit(state.copyWith(
        isLoading: false,
        error: 'Failed to load deck flashcards: ${error.toString()}',
      ));
    }
  }

  Future<void> _onSaveToDeck(
    _SaveToDeck event,
    Emitter<FlashcardState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true));
      await event.deckService.saveDeckFlashcards(
        event.deckName,
        event.flashcards,
      );
      emit(state.copyWith(
        isLoading: false,
        error: null,
      ));
    } catch (error) {
      emit(state.copyWith(
        isLoading: false,
        error: 'Failed to save flashcards to deck: ${error.toString()}',
      ));
    }
  }

  Future<void> _onChangeDeck(
      _ChangeDeck event,
      Emitter<FlashcardState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final deckName = event.deckName;
    print('deckName: $deckName');

    final flashcards =  await _storageService.getFlashcards(deckName);

    emit(state.copyWith(
      isLoading: false,
      deckName: deckName,
      flashcards: flashcards,
      learned: [],
      currentIndex: state.currentIndex.clamp(0, flashcards.length - 1)
    ));

  }

  Future<void> _onUpdateCurrentIndex(
    _UpdateCurrentIndex event,
    Emitter<FlashcardState> emit,
  ) async {
    emit(state.copyWith(currentIndex: event.index));
  }

  @override
  Future<void> close() {
    cardController.dispose();
    return super.close();
  }
}
