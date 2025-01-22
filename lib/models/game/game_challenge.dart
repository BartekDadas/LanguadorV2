import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_challenge.g.dart';
part 'game_challenge.freezed.dart';

@freezed
class GameChallenge with _$GameChallenge {
  const factory GameChallenge({
    required String id,
    required String question,
    required List<String> options,
    required String correctAnswer,
    required ChallengeType type,
    @Default(0) int points,
    String? imageUrl,
    String? audioUrl,
  }) = _GameChallenge;

  factory GameChallenge.fromJson(Map<String, dynamic> json) =>
      _$GameChallengeFromJson(json);
}

enum ChallengeType {
  multipleChoice,
  wordMatching,
  translation,
  listening,
  speaking,
}
