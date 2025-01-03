import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'flashcard.freezed.dart';
part 'flashcard.g.dart';

@freezed
class Flashcard with _$Flashcard {
  const factory Flashcard({
    required String id,
    required String front,
    required String back,
    required String language,
    @Default(false) bool isLearned,
    String? example,
    String? imageUrl,
  }) = _Flashcard;

  const Flashcard._();

  factory Flashcard.fromJson(Map<String, dynamic> json) =>
      _$FlashcardFromJson(json);
}
