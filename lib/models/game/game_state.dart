import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.g.dart';
part 'game_state.freezed.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default(0) int score,
    @Default(0) int level,
    @Default(0) int xp,
    @Default(false) bool isMultiplayer,
    @Default(GameStatus.initial) GameStatus status,
    @Default([]) List<String> currentOptions,
    String? error,
  }) = _GameState;

  factory GameState.fromJson(Map<String, dynamic> json) =>
      _$GameStateFromJson(json);
}

enum GameStatus {
  initial,
  loading,
  playing,
  loadingOptions,
  paused,
  completed,
  error,
}
