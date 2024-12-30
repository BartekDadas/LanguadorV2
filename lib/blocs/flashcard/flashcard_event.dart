part of 'flashcard_bloc.dart';

@freezed
class FlashcardEvent with _$FlashcardEvent {
  const factory FlashcardEvent.loadFlashcards({
    required String language,
    required String difficulty,
  }) = _LoadFlashcards;

  const factory FlashcardEvent.markAsLearned({
    required String flashcardId,
  }) = _MarkAsLearned;

  const factory FlashcardEvent.reviewLater({
    required String flashcardId,
  }) = _ReviewLater;
}
