part of 'flashcard_bloc.dart';

@freezed
class FlashcardEvent with _$FlashcardEvent {
  const factory FlashcardEvent.loadFlashcards({
    required String language,
    required String difficulty,
  }) = _LoadFlashcards;

  const factory FlashcardEvent.generateNewFlashcards({
    required String topic,
    required String language,
    required String difficulty,
  }) = _GenerateFlashcards;

  const factory FlashcardEvent.markAsLearned({
    required String flashcardId,
  }) = _MarkAsLearned;

  const factory FlashcardEvent.reviewLater({
    required String flashcardId,
  }) = _ReviewLater;

  const factory FlashcardEvent.addFlashcard({
    required Flashcard flashcard,
  }) = _AddFlashcard;

  const factory FlashcardEvent.putAsideFlashcard({
    required Flashcard flashcard,
  }) = _PutAsideFlashcard;

  const factory FlashcardEvent.deleteFlashcards() = _DeleteFlashcard;

}