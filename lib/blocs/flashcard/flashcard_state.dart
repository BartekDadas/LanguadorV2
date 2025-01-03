part of 'flashcard_bloc.dart';

@freezed
class FlashcardState with _$FlashcardState {
  const factory FlashcardState({
    @Default(false) bool isLoading,
    String? error,
    List<Flashcard>? flashcards,
    List<Flashcard>? learned,
  }) = _FlashcardState;
}
