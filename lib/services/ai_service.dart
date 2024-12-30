import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:languador/services/auth_service.dart';
import '../models/flashcard.dart';

class AIService {
  final String baseUrl;
  final http.Client _client;


  AIService({http.Client? client})
      : baseUrl = dotenv.env['AI_API_URL'] ?? 'http://localhost:8000',
        _client = client ?? http.Client();


  Future<List<Flashcard>> generateFlashcards({
    required String targetLanguage,
    required String difficulty,
    int count = 10,
  }) async {
    try {
      final response = await _client.post(
        Uri.parse('$baseUrl/generate-flashcards'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'target_language': targetLanguage,
          'difficulty': difficulty,
          'count': count,
        }),
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => Flashcard.fromJson(json)).toList();
      } else {
        throw Exception('Failed to generate flashcards: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error generating flashcards: $e');
    }
  }

  Future<void> dispose() async {
    _client.close();
  }
}
