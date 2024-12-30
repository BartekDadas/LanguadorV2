import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/flashcard.dart';
import '../../services/ai_service.dart';

part 'flashcard_bloc.freezed.dart';
part 'flashcard_event.dart';
part 'flashcard_state.dart';

class FlashcardBloc extends Bloc<FlashcardEvent, FlashcardState> {
  final AIService _aiService;

  FlashcardBloc({required AIService aiService})
      : _aiService = aiService,
        super(const FlashcardState.initial()) {
    on<FlashcardEvent>((event, emit) async {
      await event.map(
        loadFlashcards: (e) => _onLoadFlashcards(e, emit),
        markAsLearned: (e) => _onMarkAsLearned(e, emit),
        reviewLater: (e) => _onReviewLater(e, emit),
      );
    });
  }

  Future<void> _onLoadFlashcards(
    _LoadFlashcards event,
    Emitter<FlashcardState> emit,
  ) async {
    try {
      emit(const FlashcardState.loading());
      await Future.delayed(const Duration(seconds: 2));
      final flashcards = <Flashcard>[];
      // await _aiService.generateFlashcards(
      //   targetLanguage: event.language,
      //   difficulty: event.difficulty,
      // );
      emit(FlashcardState.loaded(flashcards: flashcards));
    } catch (error) {
      emit(FlashcardState.error(message: error.toString()));
    }
  }

  Future<void> _onMarkAsLearned(
    _MarkAsLearned event,
    Emitter<FlashcardState> emit,
  ) async {
    state.maybeMap(
      loaded: (loadedState) {
        final updatedFlashcards = loadedState.flashcards.map((flashcard) {
          if (flashcard.id == event.flashcardId) {
            return flashcard.copyWith(isLearned: true);
          }
          return flashcard;
        }).toList();
        emit(FlashcardState.loaded(flashcards: updatedFlashcards));
      },
      orElse: () {},
    );
  }

  Future<void> _onReviewLater(
    _ReviewLater event,
    Emitter<FlashcardState> emit,
  ) async {
    // Implementation for reviewing later
    // This could involve storing the flashcard ID in a separate review list
    // or updating its status in the database
  }
}
