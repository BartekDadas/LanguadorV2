import 'package:languador/models/flashcard.dart';
import 'package:uuid/uuid.dart';

Flashcard stringToFlashcard(String string, String language) {
  final List<String> parts = string.split(':');
  return Flashcard(
    id: const Uuid().v4(),
    front: parts[0].trimLeft(),
    back: parts[1].trimRight(),
    language: language,
  );
}