import 'package:languador/models/flashcard.dart';
import 'package:languador/services/auth_service.dart';
import 'package:get_it/get_it.dart';

final _getIt = GetIt.instance;
class FlashCardsProvider {
  final AuthService _service = _getIt<AuthService>();


  Future<bool> addFlashCardToBase(Flashcard flashcard) async {
    try {
      return await _service.passItemToFireStore(
        'users_flashcards',
        _service.currentUser!.uid,
        flashcard.toJson(),
      );
    } catch (e) {
      throw Exception('Error adding flashcard to Firestore: $e');
    }
  }





}