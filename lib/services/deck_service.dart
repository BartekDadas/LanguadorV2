import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/flashcard.dart';

class DeckService {
  static const String _deckNamesKey = 'flashcardDeckNames';
  final SharedPreferences _prefs;

  DeckService(this._prefs);

  Future<List<String>> getDeckNames() async {
    final List<String> deckNames = _prefs.getStringList(_deckNamesKey) ?? [];
    if(!deckNames.contains('all')) {
      deckNames.add('all');
      _prefs.setStringList(_deckNamesKey, deckNames);
    }
    return deckNames;
  }

  Future<void> createDeck(String deckName) async {
    final List<String> deckNames = await getDeckNames();
    if (!deckNames.contains(deckName)) {
      deckNames.add(deckName);
      await _prefs.setStringList(_deckNamesKey, deckNames);
      // Initialize empty deck
      await _prefs.setString(_getDeckKey(deckName), jsonEncode([]));
    }
  }

  Future<void> saveDeckFlashcards(String deckName, List<Flashcard> flashcards) async {
    final String flashcardsJson = jsonEncode(
      flashcards.map((f) => f.toJson()).toList(),
    );
    await _prefs.setString(_getDeckKey(deckName), flashcardsJson);
  }

  Future<List<Flashcard>> getDeckFlashcards(String deckName) async {
    final String? flashcardsJson = _prefs.getString(_getDeckKey(deckName));
    if (flashcardsJson == null) return [];

    final List<dynamic> decoded = jsonDecode(flashcardsJson);
    return decoded.map((json) => Flashcard.fromJson(json)).toList();
  }

  Future<void> deleteDeck(String deckName) async {
    final List<String> deckNames = await getDeckNames();
    deckNames.remove(deckName);
    await _prefs.setStringList(_deckNamesKey, deckNames);
    await _prefs.remove(_getDeckKey(deckName));
  }

  String _getDeckKey(String deckName) => 'deck_$deckName';
}
