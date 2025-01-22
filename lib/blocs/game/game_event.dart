part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.started({
    required bool isMultiplayer,
    ChallengeType? challengeType,
  }) = GameStarted;

  const factory GameEvent.answerSubmitted({
    required bool isCorrect,
    required Duration timeSpent,
  }) = GameAnswerSubmitted;

  const factory GameEvent.paused() = GamePaused;

  const factory GameEvent.resumed() = GameResumed;

  const factory GameEvent.ended({
    String? userId,
  }) = GameEnded;

  const factory GameEvent.loadOptions({
    required String correctAnswer,
  }) = LoadOptions;
}
