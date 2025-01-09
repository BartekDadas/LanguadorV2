import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_cubit.freezed.dart';

@freezed
class FlashcardCubitState with _$FlashcardCubitState {
  const factory FlashcardCubitState({
    @Default({}) Map<String, bool> flippedCards,
  }) = _FlashcardCubitState;
}

class FlashcardCubit extends Cubit<FlashcardCubitState> {
  FlashcardCubit() : super(const FlashcardCubitState());

  void toggleCard([String? cardId]) {
    if (cardId == null) {
      // If no cardId provided, toggle all cards to unflipped state
      emit(const FlashcardCubitState());
      return;
    }

    final currentFlippedCards = Map<String, bool>.from(state.flippedCards);
    currentFlippedCards[cardId] = !(currentFlippedCards[cardId] ?? false);
    
    emit(state.copyWith(flippedCards: currentFlippedCards));
  }

  void resetCards() {
    emit(const FlashcardCubitState());
  }

  bool isCardFlipped(String cardId) {
    return state.flippedCards[cardId] ?? false;
  }
}