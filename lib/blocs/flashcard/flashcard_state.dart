part of 'flashcard_bloc.dart';

@freezed
class FlashcardState with _$FlashcardState {
  const factory FlashcardState.initial() = _Initial;
  const factory FlashcardState.loading() = _Loading;
  const factory FlashcardState.loaded({
    required List<Flashcard> flashcards,
  }) = _Loaded;
  const factory FlashcardState.error({
    required String message,
  }) = _Error;
}
