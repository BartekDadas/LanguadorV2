import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languador/providers/flashcards_provider.dart';
import '../../models/flashcard.dart';
import '../../services/ai_service.dart';

part 'flashcard_bloc.freezed.dart';
part 'flashcard_event.dart';
part 'flashcard_state.dart';

class FlashcardBloc extends Bloc<FlashcardEvent, FlashcardState> {
  final AIService _aiService;

  FlashcardBloc({required AIService aiService})
      : _aiService = aiService,
        super(const FlashcardState()) {
    on<FlashcardEvent>((event, emit) async {
      await event.map(
        loadFlashcards: (e) => _onLoadFlashcards(e, emit),
        markAsLearned: (e) => _onMarkAsLearned(e, emit),
        reviewLater: (e) => _onReviewLater(e, emit),
        addFlashcard: (e) => _onAddFlashcard(e, emit),
        putAsideFlashcard: (e) => _onPutAsideFlashcard(e, emit),
        deleteFlashcards: (e) => _onDeleteFlashcard(e, emit),
        generateNewFlashcards: (e) => _onGenerateNewFlashcards(e, emit),
      );
    });
  }

  Future<void> _onLoadFlashcards(
    _LoadFlashcards event,
    Emitter<FlashcardState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true));
      await Future.delayed(const Duration(seconds: 2));
      // final flashcards = await _aiService.generateFlashcards(
      //   targetLanguage: event.language,
      //   difficulty: event.difficulty,
      // );
      // print(flashcards.length);
      emit(state.copyWith(
        // error: flashcards.isEmpty? 'No connection to database' : null,
        isLoading: false,
        flashcards: [],
        learned: [],
      ));
    } catch (error) {
      emit(state.copyWith(
        isLoading: false,
        error: error.toString(),
      ));
    }
  }

  Future<void> _onGenerateNewFlashcards(
      _GenerateFlashcards event,
      Emitter<FlashcardState> emit
  ) async {
    try {
      emit(state.copyWith(isLoading: true));
      final flashcards = await _aiService.generateFlashcards(
        targetLanguage: event.language,
        difficulty: event.difficulty,
      );
      print(flashcards.length);
      emit(state.copyWith(
        error: flashcards.isEmpty? 'No connection to database' : null,
        isLoading: false,
        flashcards: flashcards,
        learned: [],
      ));
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
      emit(state.copyWith(flashcards: updatedFlashcards));
    }
  }

  Future<void> _onReviewLater(
    _ReviewLater event,
    Emitter<FlashcardState> emit,
  ) async {
    // Implementation for reviewing later
    // This could involve storing the flashcard ID in a separate review list
    // or updating its status in the database
  }

  Future<void> _onAddFlashcard(
    _AddFlashcard event,
    Emitter<FlashcardState> emit,
  ) async {
    final response = await FlashCardsProvider().addFlashCardToBase(event.flashcard);
    print('Response: $response');
    if (response && state.flashcards != null) {
      final updatedFlashcards = List<Flashcard>.from(state.flashcards!)
        ..remove(event.flashcard);
      emit(state.copyWith(flashcards: updatedFlashcards));
    }
  }

  Future<void> _onPutAsideFlashcard(
    _PutAsideFlashcard event,
    Emitter<FlashcardState> emit,
  ) async {
    print('Put Aside Flashcard, ${state.flashcards?.length}');
    final updatedFlashcards = List<Flashcard>.from(state.flashcards!)
      ..remove(event.flashcard);
    emit(
        state.copyWith(
            flashcards: updatedFlashcards.isEmpty? null : updatedFlashcards,
            learned: List.from(state.learned ?? [])
              ..add(event.flashcard)
        )
    );

  }

  Future<void> _onDeleteFlashcard(
    _DeleteFlashcard event,
    Emitter<FlashcardState> emit,
  ) async {
    emit(state.copyWith(learned: null));
  }
}
