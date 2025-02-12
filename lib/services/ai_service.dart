import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:languador/services/auth_service.dart';
import 'package:languador/utils/exceptions.dart';
import 'package:languador/utils/string_to_flashcard.dart';
import '../models/flashcard.dart';

class AIService {
  final String baseUrl;
  final http.Client _client;


  AIService({http.Client? client})
      : baseUrl = 'http://10.0.2.2:5000',//dotenv.env['AI_API_URL'] ?? 'http://localhost:8000',
        _client = client ?? http.Client();


  Future<List<String>> generateWrongAnswers({
    required String goodAnswer,
  }) async {
    try {
      final response = await _client.post(
        Uri.parse('$baseUrl/generate_wrong_answers'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'good_answer': goodAnswer,
        }),
      );
      print(response.body);
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body)['bad_answers'];
        print(data);
        return data.map((json) => json.toString().split(':')[1]).toList();
      } else {
        throw Exception(
            'Failed to generate wrong answers: ${response.statusCode}');
      }
    } on SocketException {
      return [];
    } catch (e) {
      throw Exception('Error generating wrong answers: $e');
    }
  }


  Future<List<Flashcard>> generateFlashcards({
    required String targetLanguage,
    required String difficulty,
    String? topic,
    String nativeLanguage = 'English'
  }) async {
    try {
      print('Target Language $targetLanguage');
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
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        // print(response.body);
        final List<dynamic> data = json.decode(response.body)['result'];
        print(data);
        return data.map((json) => stringToFlashcard(json, targetLanguage))
            .toList();
      } else if (response.statusCode == 404) {
        throw ConnectionException('No connection to the AI server');
      } else {
        throw Exception(
            'Failed to generate flashcards: ${response.statusCode}');
      }
    } on SocketException {
      throw ConnectionException('No connection to the AI server');
    } catch (e) {
      print(e);
      throw Exception('Error generating flashcards: $e');
    }
  }

  Future<void> dispose() async {
    _client.close();
  }
}
