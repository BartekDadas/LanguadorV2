// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameState _$GameStateFromJson(Map<String, dynamic> json) {
  return _GameState.fromJson(json);
}

/// @nodoc
mixin _$GameState {
  int get score => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get xp => throw _privateConstructorUsedError;
  bool get isMultiplayer => throw _privateConstructorUsedError;
  GameStatus get status => throw _privateConstructorUsedError;
  List<String> get currentOptions => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this GameState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call(
      {int score,
      int level,
      int xp,
      bool isMultiplayer,
      GameStatus status,
      List<String> currentOptions,
      String? error});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? level = null,
    Object? xp = null,
    Object? isMultiplayer = null,
    Object? status = null,
    Object? currentOptions = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as int,
      isMultiplayer: null == isMultiplayer
          ? _value.isMultiplayer
          : isMultiplayer // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameStatus,
      currentOptions: null == currentOptions
          ? _value.currentOptions
          : currentOptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
          _$GameStateImpl value, $Res Function(_$GameStateImpl) then) =
      __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int score,
      int level,
      int xp,
      bool isMultiplayer,
      GameStatus status,
      List<String> currentOptions,
      String? error});
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
      _$GameStateImpl _value, $Res Function(_$GameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? level = null,
    Object? xp = null,
    Object? isMultiplayer = null,
    Object? status = null,
    Object? currentOptions = null,
    Object? error = freezed,
  }) {
    return _then(_$GameStateImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as int,
      isMultiplayer: null == isMultiplayer
          ? _value.isMultiplayer
          : isMultiplayer // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameStatus,
      currentOptions: null == currentOptions
          ? _value._currentOptions
          : currentOptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameStateImpl implements _GameState {
  const _$GameStateImpl(
      {this.score = 0,
      this.level = 0,
      this.xp = 0,
      this.isMultiplayer = false,
      this.status = GameStatus.initial,
      final List<String> currentOptions = const [],
      this.error})
      : _currentOptions = currentOptions;

  factory _$GameStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameStateImplFromJson(json);

  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final int level;
  @override
  @JsonKey()
  final int xp;
  @override
  @JsonKey()
  final bool isMultiplayer;
  @override
  @JsonKey()
  final GameStatus status;
  final List<String> _currentOptions;
  @override
  @JsonKey()
  List<String> get currentOptions {
    if (_currentOptions is EqualUnmodifiableListView) return _currentOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentOptions);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'GameState(score: $score, level: $level, xp: $xp, isMultiplayer: $isMultiplayer, status: $status, currentOptions: $currentOptions, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.xp, xp) || other.xp == xp) &&
            (identical(other.isMultiplayer, isMultiplayer) ||
                other.isMultiplayer == isMultiplayer) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._currentOptions, _currentOptions) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, score, level, xp, isMultiplayer,
      status, const DeepCollectionEquality().hash(_currentOptions), error);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameStateImplToJson(
      this,
    );
  }
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {final int score,
      final int level,
      final int xp,
      final bool isMultiplayer,
      final GameStatus status,
      final List<String> currentOptions,
      final String? error}) = _$GameStateImpl;

  factory _GameState.fromJson(Map<String, dynamic> json) =
      _$GameStateImpl.fromJson;

  @override
  int get score;
  @override
  int get level;
  @override
  int get xp;
  @override
  bool get isMultiplayer;
  @override
  GameStatus get status;
  @override
  List<String> get currentOptions;
  @override
  String? get error;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
