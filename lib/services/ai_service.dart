import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:languador/services/auth_service.dart';
import 'package:languador/utils/string_to_flashcard.dart';
import '../models/flashcard.dart';

class AIService {
  final String baseUrl;
  final http.Client _client;


  AIService({http.Client? client})
      : baseUrl = 'http://10.0.2.2:5000',//dotenv.env['AI_API_URL'] ?? 'http://localhost:8000',
        _client = client ?? http.Client();


  Future<List<Flashcard>> generateFlashcards({
    required String targetLanguage,
    required String difficulty,
    String? topic,
    String nativeLanguage = 'English'
  }) async {
    try {
      final response = await _client.post(
        Uri.parse('$baseUrl/generate_flashcards'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'message': '$topic',
          'target_language': targetLanguage,
          'native_language': nativeLanguage,
          'difficulty': difficulty,
        }),
      );

      print(response.body);
      if (response.statusCode == 200) {
        // print(response.body);
        final List<dynamic> data = json.decode(response.body)['response'];
        print(data);
        return data.map((json) => stringToFlashcard(json, targetLanguage))
            .toList();
      } else {
        throw Exception(
            'Failed to generate flashcards: ${response.statusCode}');
      }
    } on SocketException {
      return [];
    } catch (e) {
      throw Exception('Error generating flashcards: $e');
    }
  }

  Future<void> dispose() async {
    _client.close();
  }
}
