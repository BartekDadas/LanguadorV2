import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
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
        changeDeck: (e) => _onChangeDeck(e, emit)
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
      emit(state.copyWith(isLoading: true));
      
      await _ensureUserModelInitialized();
      if (userModel == null) {
        emit(state.copyWith(
          isLoading: false,
          error: 'User model not initialized',
        ));
        return;
      }

      final deckName = event.deckName ?? state.deckName;
      
      // Try to load from local storage first
      final localFlashcards = await _storageService.getFlashcards(deckName);
      final localLearned = await _storageService.getLearnedFlashcards(deckName);

      try {
        // final flashcards = await FlashcardsProvider.getFlashcards();
        // await _storageService.saveFlashcards(flashcards);
        emit(state.copyWith(
          error: null,
          language: userModel!.learningLanguages[0].code,
          difficulty: userModel!.level == 1 ? 'beginner' : 'intermediate',
          isLoading: false,
          // flashcards: flashcards,
          learned: [],
          deckName: deckName,
        ));
      } catch (error) {
        emit(state.copyWith(
          error: 'Failed to fetch flashcards. Using offline data.',
          isLoading: false,
          flashcards: localFlashcards,
          learned: localLearned,
          language: userModel!.learningLanguages[0].code,
          difficulty: userModel!.level == 1 ? 'beginner' : 'intermediate',
          deckName: deckName,
        ));
      }
    } catch (error) {
      emit(state.copyWith(
        isLoading: false,
        error: error.toString(),
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

      final deckName = state.deckName;
      print(flashcards);
      if (flashcards.isNotEmpty) {
        // await _storageService.saveFlashcards(flashcards, deckName);
        emit(state.copyWith(
          isLoading: false,
          generated: flashcards,
        ));
      }
        // Load from local storage if API fails
      //final localFlashcards = await _storageService.getFlashcards(deckName);
      // emit(state.copyWith(
      //   error: localFlashcards.isEmpty ? 'No connection to database' : 'Using offline data',
      //   isLoading: false,
      //   flashcards: localFlashcards,
      //   learned: state.learned,
      // ));
    } catch (error) {
      emit(state.copyWith(
        isLoading: false,
        error: error.toString(),
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
      
      await _storageService.saveFlashcards(updatedFlashcards, deckName);
      await _storageService.saveLearnedFlashcards(
        List.from(state.learned ?? [])..add(reviewedFlashcard),
        deckName,
      );
      
      emit(state.copyWith(
        flashcards: updatedFlashcards,
        learned: List.from(state.learned ?? [])..add(reviewedFlashcard),
      ));
    }
  }

  Future<void> _onAddFlashcard(
    _AddFlashcard event,
    Emitter<FlashcardState> emit,
  ) async {
    final response = await FlashCardsProvider().addFlashCardToBase(event.flashcard);
    if (response && state.flashcards != null) {
      final updatedFlashcards = List<Flashcard>.from(state.flashcards!)
        ..remove(event.flashcard);

      final deckName = state.deckName;

      await _storageService.saveFlashcards(updatedFlashcards, deckName);
      // await _storageService.saveLearnedFlashcards(
      //   List.from(state.learned ?? [])..add(event.flashcard),
      //   deckName,
      // );
      
      emit(state.copyWith(
        flashcards: updatedFlashcards,
        learned: List.from(state.learned ?? [])..add(event.flashcard),
      ));
    }
  }

  Future<void> _onPutAsideFlashcard(
    _PutAsideFlashcard event,
    Emitter<FlashcardState> emit,
  ) async {
    if (state.flashcards != null) {
      final updatedFlashcards = List<Flashcard>.from(state.flashcards!)
        ..remove(event.flashcard);
      
      final updatedLearned = List<Flashcard>.from(state.learned ?? [])..add(event.flashcard);

      final deckName = state.deckName;

      await _storageService.saveFlashcards(updatedFlashcards, deckName);
      await _storageService.saveLearnedFlashcards(updatedLearned, deckName);
      
      emit(state.copyWith(
        flashcards: updatedFlashcards.isEmpty ? [] : updatedFlashcards,
        learned: updatedLearned,
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

    final flashcards =  await _storageService.getFlashcards(deckName);

    emit(state.copyWith(
      isLoading: false,
      deckName: deckName,
      flashcards: flashcards,
      learned: [],
    ));

  }

  @override
  Future<void> close() {
    cardController.dispose();
    return super.close();
  }
}
