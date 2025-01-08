
import 'package:bloc/bloc.dart';

class FlashcardCubit extends Cubit<String> {
  FlashcardCubit() : super('');

  void changeDeck(String deckName) {
    emit(deckName);
  }



}