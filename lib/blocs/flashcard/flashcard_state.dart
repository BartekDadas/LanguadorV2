part of 'flashcard_bloc.dart';

@freezed
class FlashcardState with _$FlashcardState {
  const factory FlashcardState({
    @Default(false) bool isLoading,
    String? error,
    @Default('en') String language,
    @Default('beginner') String difficulty,
    List<Flashcard>? generated,
    List<Flashcard>? flashcards,
    List<Flashcard>? learned,
    List<Flashcard>? putAside,
    @Default('all') String deckName,
    @Default(0) int currentIndex,
  }) = _FlashcardState;
}
