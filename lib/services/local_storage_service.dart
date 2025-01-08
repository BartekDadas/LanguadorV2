import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/flashcard.dart';

class LocalStorageService {
  static const String _flashcardsKey = 'flashcards';
  static const String _learnedFlashcardsKey = 'learned_flashcards';
  static const String _lastSyncKey = 'last_sync';

  Future<void> saveFlashcards(List<Flashcard> flashcards, String deckName) async {
    final prefs = await SharedPreferences.getInstance();
    final flashcardsJson = flashcards.map((f) => f.toJson()).toList();
    await prefs.setString("$_flashcardsKey/$deckName", json.encode(flashcardsJson));
  }

  Future<List<Flashcard>> getFlashcards(String deckName) async {
    final prefs = await SharedPreferences.getInstance();
    final flashcardsJson = prefs.getString("$_flashcardsKey/$deckName");
    if (flashcardsJson == null) return [];
    
    final List<dynamic> decoded = json.decode(flashcardsJson);
    return decoded.map((json) => Flashcard.fromJson(json)).toList();
  }

  Future<void> saveLearnedFlashcards(List<Flashcard> flashcards, String deckName) async {
    final prefs = await SharedPreferences.getInstance();
    final flashcardsJson = flashcards.map((f) => f.toJson()).toList();
    await prefs.setString("$_learnedFlashcardsKey/$deckName", json.encode(flashcardsJson));
  }

  Future<List<Flashcard>> getLearnedFlashcards(String deckName) async {
    final prefs = await SharedPreferences.getInstance();
    final flashcardsJson = prefs.getString(_learnedFlashcardsKey);
    if (flashcardsJson == null) return [];
    
    final List<dynamic> decoded = json.decode(flashcardsJson);
    return decoded.map((json) => Flashcard.fromJson(json)).toList();
  }

  Future<void> updateLastSyncTime() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_lastSyncKey, DateTime.now().toIso8601String());
  }

  Future<DateTime?> getLastSyncTime() async {
    final prefs = await SharedPreferences.getInstance();
    final lastSyncStr = prefs.getString(_lastSyncKey);
    return lastSyncStr != null ? DateTime.parse(lastSyncStr) : null;
  }

  Future<void> clearAllData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_flashcardsKey);
    await prefs.remove(_learnedFlashcardsKey);
    await prefs.remove(_lastSyncKey);
  }
}
