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
    @Default('all') String deckName,
  }) = _FlashcardState;
}
