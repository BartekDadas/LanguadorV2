// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMultiplayer, ChallengeType? challengeType)
        started,
    required TResult Function(bool isCorrect, Duration timeSpent)
        answerSubmitted,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(String? userId) ended,
    required TResult Function(String correctAnswer) loadOptions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMultiplayer, ChallengeType? challengeType)?
        started,
    TResult? Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function(String? userId)? ended,
    TResult? Function(String correctAnswer)? loadOptions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMultiplayer, ChallengeType? challengeType)? started,
    TResult Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(String? userId)? ended,
    TResult Function(String correctAnswer)? loadOptions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(GameAnswerSubmitted value) answerSubmitted,
    required TResult Function(GamePaused value) paused,
    required TResult Function(GameResumed value) resumed,
    required TResult Function(GameEnded value) ended,
    required TResult Function(LoadOptions value) loadOptions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult? Function(GamePaused value)? paused,
    TResult? Function(GameResumed value)? resumed,
    TResult? Function(GameEnded value)? ended,
    TResult? Function(LoadOptions value)? loadOptions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult Function(GamePaused value)? paused,
    TResult Function(GameResumed value)? resumed,
    TResult Function(GameEnded value)? ended,
    TResult Function(LoadOptions value)? loadOptions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GameStartedImplCopyWith<$Res> {
  factory _$$GameStartedImplCopyWith(
          _$GameStartedImpl value, $Res Function(_$GameStartedImpl) then) =
      __$$GameStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isMultiplayer, ChallengeType? challengeType});
}

/// @nodoc
class __$$GameStartedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$GameStartedImpl>
    implements _$$GameStartedImplCopyWith<$Res> {
  __$$GameStartedImplCopyWithImpl(
      _$GameStartedImpl _value, $Res Function(_$GameStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMultiplayer = null,
    Object? challengeType = freezed,
  }) {
    return _then(_$GameStartedImpl(
      isMultiplayer: null == isMultiplayer
          ? _value.isMultiplayer
          : isMultiplayer // ignore: cast_nullable_to_non_nullable
              as bool,
      challengeType: freezed == challengeType
          ? _value.challengeType
          : challengeType // ignore: cast_nullable_to_non_nullable
              as ChallengeType?,
    ));
  }
}

/// @nodoc

class _$GameStartedImpl implements GameStarted {
  const _$GameStartedImpl({required this.isMultiplayer, this.challengeType});

  @override
  final bool isMultiplayer;
  @override
  final ChallengeType? challengeType;

  @override
  String toString() {
    return 'GameEvent.started(isMultiplayer: $isMultiplayer, challengeType: $challengeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStartedImpl &&
            (identical(other.isMultiplayer, isMultiplayer) ||
                other.isMultiplayer == isMultiplayer) &&
            (identical(other.challengeType, challengeType) ||
                other.challengeType == challengeType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMultiplayer, challengeType);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStartedImplCopyWith<_$GameStartedImpl> get copyWith =>
      __$$GameStartedImplCopyWithImpl<_$GameStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMultiplayer, ChallengeType? challengeType)
        started,
    required TResult Function(bool isCorrect, Duration timeSpent)
        answerSubmitted,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(String? userId) ended,
    required TResult Function(String correctAnswer) loadOptions,
  }) {
    return started(isMultiplayer, challengeType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMultiplayer, ChallengeType? challengeType)?
        started,
    TResult? Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function(String? userId)? ended,
    TResult? Function(String correctAnswer)? loadOptions,
  }) {
    return started?.call(isMultiplayer, challengeType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMultiplayer, ChallengeType? challengeType)? started,
    TResult Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(String? userId)? ended,
    TResult Function(String correctAnswer)? loadOptions,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(isMultiplayer, challengeType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(GameAnswerSubmitted value) answerSubmitted,
    required TResult Function(GamePaused value) paused,
    required TResult Function(GameResumed value) resumed,
    required TResult Function(GameEnded value) ended,
    required TResult Function(LoadOptions value) loadOptions,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult? Function(GamePaused value)? paused,
    TResult? Function(GameResumed value)? resumed,
    TResult? Function(GameEnded value)? ended,
    TResult? Function(LoadOptions value)? loadOptions,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult Function(GamePaused value)? paused,
    TResult Function(GameResumed value)? resumed,
    TResult Function(GameEnded value)? ended,
    TResult Function(LoadOptions value)? loadOptions,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class GameStarted implements GameEvent {
  const factory GameStarted(
      {required final bool isMultiplayer,
      final ChallengeType? challengeType}) = _$GameStartedImpl;

  bool get isMultiplayer;
  ChallengeType? get challengeType;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStartedImplCopyWith<_$GameStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameAnswerSubmittedImplCopyWith<$Res> {
  factory _$$GameAnswerSubmittedImplCopyWith(_$GameAnswerSubmittedImpl value,
          $Res Function(_$GameAnswerSubmittedImpl) then) =
      __$$GameAnswerSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isCorrect, Duration timeSpent});
}

/// @nodoc
class __$$GameAnswerSubmittedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$GameAnswerSubmittedImpl>
    implements _$$GameAnswerSubmittedImplCopyWith<$Res> {
  __$$GameAnswerSubmittedImplCopyWithImpl(_$GameAnswerSubmittedImpl _value,
      $Res Function(_$GameAnswerSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCorrect = null,
    Object? timeSpent = null,
  }) {
    return _then(_$GameAnswerSubmittedImpl(
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      timeSpent: null == timeSpent
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$GameAnswerSubmittedImpl implements GameAnswerSubmitted {
  const _$GameAnswerSubmittedImpl(
      {required this.isCorrect, required this.timeSpent});

  @override
  final bool isCorrect;
  @override
  final Duration timeSpent;

  @override
  String toString() {
    return 'GameEvent.answerSubmitted(isCorrect: $isCorrect, timeSpent: $timeSpent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameAnswerSubmittedImpl &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.timeSpent, timeSpent) ||
                other.timeSpent == timeSpent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCorrect, timeSpent);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameAnswerSubmittedImplCopyWith<_$GameAnswerSubmittedImpl> get copyWith =>
      __$$GameAnswerSubmittedImplCopyWithImpl<_$GameAnswerSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMultiplayer, ChallengeType? challengeType)
        started,
    required TResult Function(bool isCorrect, Duration timeSpent)
        answerSubmitted,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(String? userId) ended,
    required TResult Function(String correctAnswer) loadOptions,
  }) {
    return answerSubmitted(isCorrect, timeSpent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMultiplayer, ChallengeType? challengeType)?
        started,
    TResult? Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function(String? userId)? ended,
    TResult? Function(String correctAnswer)? loadOptions,
  }) {
    return answerSubmitted?.call(isCorrect, timeSpent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMultiplayer, ChallengeType? challengeType)? started,
    TResult Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(String? userId)? ended,
    TResult Function(String correctAnswer)? loadOptions,
    required TResult orElse(),
  }) {
    if (answerSubmitted != null) {
      return answerSubmitted(isCorrect, timeSpent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(GameAnswerSubmitted value) answerSubmitted,
    required TResult Function(GamePaused value) paused,
    required TResult Function(GameResumed value) resumed,
    required TResult Function(GameEnded value) ended,
    required TResult Function(LoadOptions value) loadOptions,
  }) {
    return answerSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult? Function(GamePaused value)? paused,
    TResult? Function(GameResumed value)? resumed,
    TResult? Function(GameEnded value)? ended,
    TResult? Function(LoadOptions value)? loadOptions,
  }) {
    return answerSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult Function(GamePaused value)? paused,
    TResult Function(GameResumed value)? resumed,
    TResult Function(GameEnded value)? ended,
    TResult Function(LoadOptions value)? loadOptions,
    required TResult orElse(),
  }) {
    if (answerSubmitted != null) {
      return answerSubmitted(this);
    }
    return orElse();
  }
}

abstract class GameAnswerSubmitted implements GameEvent {
  const factory GameAnswerSubmitted(
      {required final bool isCorrect,
      required final Duration timeSpent}) = _$GameAnswerSubmittedImpl;

  bool get isCorrect;
  Duration get timeSpent;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameAnswerSubmittedImplCopyWith<_$GameAnswerSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GamePausedImplCopyWith<$Res> {
  factory _$$GamePausedImplCopyWith(
          _$GamePausedImpl value, $Res Function(_$GamePausedImpl) then) =
      __$$GamePausedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GamePausedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$GamePausedImpl>
    implements _$$GamePausedImplCopyWith<$Res> {
  __$$GamePausedImplCopyWithImpl(
      _$GamePausedImpl _value, $Res Function(_$GamePausedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GamePausedImpl implements GamePaused {
  const _$GamePausedImpl();

  @override
  String toString() {
    return 'GameEvent.paused()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GamePausedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMultiplayer, ChallengeType? challengeType)
        started,
    required TResult Function(bool isCorrect, Duration timeSpent)
        answerSubmitted,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(String? userId) ended,
    required TResult Function(String correctAnswer) loadOptions,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMultiplayer, ChallengeType? challengeType)?
        started,
    TResult? Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function(String? userId)? ended,
    TResult? Function(String correctAnswer)? loadOptions,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMultiplayer, ChallengeType? challengeType)? started,
    TResult Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(String? userId)? ended,
    TResult Function(String correctAnswer)? loadOptions,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(GameAnswerSubmitted value) answerSubmitted,
    required TResult Function(GamePaused value) paused,
    required TResult Function(GameResumed value) resumed,
    required TResult Function(GameEnded value) ended,
    required TResult Function(LoadOptions value) loadOptions,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult? Function(GamePaused value)? paused,
    TResult? Function(GameResumed value)? resumed,
    TResult? Function(GameEnded value)? ended,
    TResult? Function(LoadOptions value)? loadOptions,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult Function(GamePaused value)? paused,
    TResult Function(GameResumed value)? resumed,
    TResult Function(GameEnded value)? ended,
    TResult Function(LoadOptions value)? loadOptions,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class GamePaused implements GameEvent {
  const factory GamePaused() = _$GamePausedImpl;
}

/// @nodoc
abstract class _$$GameResumedImplCopyWith<$Res> {
  factory _$$GameResumedImplCopyWith(
          _$GameResumedImpl value, $Res Function(_$GameResumedImpl) then) =
      __$$GameResumedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameResumedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$GameResumedImpl>
    implements _$$GameResumedImplCopyWith<$Res> {
  __$$GameResumedImplCopyWithImpl(
      _$GameResumedImpl _value, $Res Function(_$GameResumedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GameResumedImpl implements GameResumed {
  const _$GameResumedImpl();

  @override
  String toString() {
    return 'GameEvent.resumed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameResumedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMultiplayer, ChallengeType? challengeType)
        started,
    required TResult Function(bool isCorrect, Duration timeSpent)
        answerSubmitted,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(String? userId) ended,
    required TResult Function(String correctAnswer) loadOptions,
  }) {
    return resumed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMultiplayer, ChallengeType? challengeType)?
        started,
    TResult? Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function(String? userId)? ended,
    TResult? Function(String correctAnswer)? loadOptions,
  }) {
    return resumed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMultiplayer, ChallengeType? challengeType)? started,
    TResult Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(String? userId)? ended,
    TResult Function(String correctAnswer)? loadOptions,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(GameAnswerSubmitted value) answerSubmitted,
    required TResult Function(GamePaused value) paused,
    required TResult Function(GameResumed value) resumed,
    required TResult Function(GameEnded value) ended,
    required TResult Function(LoadOptions value) loadOptions,
  }) {
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult? Function(GamePaused value)? paused,
    TResult? Function(GameResumed value)? resumed,
    TResult? Function(GameEnded value)? ended,
    TResult? Function(LoadOptions value)? loadOptions,
  }) {
    return resumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult Function(GamePaused value)? paused,
    TResult Function(GameResumed value)? resumed,
    TResult Function(GameEnded value)? ended,
    TResult Function(LoadOptions value)? loadOptions,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed(this);
    }
    return orElse();
  }
}

abstract class GameResumed implements GameEvent {
  const factory GameResumed() = _$GameResumedImpl;
}

/// @nodoc
abstract class _$$GameEndedImplCopyWith<$Res> {
  factory _$$GameEndedImplCopyWith(
          _$GameEndedImpl value, $Res Function(_$GameEndedImpl) then) =
      __$$GameEndedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? userId});
}

/// @nodoc
class __$$GameEndedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$GameEndedImpl>
    implements _$$GameEndedImplCopyWith<$Res> {
  __$$GameEndedImplCopyWithImpl(
      _$GameEndedImpl _value, $Res Function(_$GameEndedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$GameEndedImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GameEndedImpl implements GameEnded {
  const _$GameEndedImpl({this.userId});

  @override
  final String? userId;

  @override
  String toString() {
    return 'GameEvent.ended(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameEndedImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameEndedImplCopyWith<_$GameEndedImpl> get copyWith =>
      __$$GameEndedImplCopyWithImpl<_$GameEndedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMultiplayer, ChallengeType? challengeType)
        started,
    required TResult Function(bool isCorrect, Duration timeSpent)
        answerSubmitted,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(String? userId) ended,
    required TResult Function(String correctAnswer) loadOptions,
  }) {
    return ended(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMultiplayer, ChallengeType? challengeType)?
        started,
    TResult? Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function(String? userId)? ended,
    TResult? Function(String correctAnswer)? loadOptions,
  }) {
    return ended?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMultiplayer, ChallengeType? challengeType)? started,
    TResult Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(String? userId)? ended,
    TResult Function(String correctAnswer)? loadOptions,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(GameAnswerSubmitted value) answerSubmitted,
    required TResult Function(GamePaused value) paused,
    required TResult Function(GameResumed value) resumed,
    required TResult Function(GameEnded value) ended,
    required TResult Function(LoadOptions value) loadOptions,
  }) {
    return ended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult? Function(GamePaused value)? paused,
    TResult? Function(GameResumed value)? resumed,
    TResult? Function(GameEnded value)? ended,
    TResult? Function(LoadOptions value)? loadOptions,
  }) {
    return ended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult Function(GamePaused value)? paused,
    TResult Function(GameResumed value)? resumed,
    TResult Function(GameEnded value)? ended,
    TResult Function(LoadOptions value)? loadOptions,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended(this);
    }
    return orElse();
  }
}

abstract class GameEnded implements GameEvent {
  const factory GameEnded({final String? userId}) = _$GameEndedImpl;

  String? get userId;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameEndedImplCopyWith<_$GameEndedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadOptionsImplCopyWith<$Res> {
  factory _$$LoadOptionsImplCopyWith(
          _$LoadOptionsImpl value, $Res Function(_$LoadOptionsImpl) then) =
      __$$LoadOptionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String correctAnswer});
}

/// @nodoc
class __$$LoadOptionsImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$LoadOptionsImpl>
    implements _$$LoadOptionsImplCopyWith<$Res> {
  __$$LoadOptionsImplCopyWithImpl(
      _$LoadOptionsImpl _value, $Res Function(_$LoadOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correctAnswer = null,
  }) {
    return _then(_$LoadOptionsImpl(
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadOptionsImpl implements LoadOptions {
  const _$LoadOptionsImpl({required this.correctAnswer});

  @override
  final String correctAnswer;

  @override
  String toString() {
    return 'GameEvent.loadOptions(correctAnswer: $correctAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadOptionsImpl &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, correctAnswer);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadOptionsImplCopyWith<_$LoadOptionsImpl> get copyWith =>
      __$$LoadOptionsImplCopyWithImpl<_$LoadOptionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMultiplayer, ChallengeType? challengeType)
        started,
    required TResult Function(bool isCorrect, Duration timeSpent)
        answerSubmitted,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(String? userId) ended,
    required TResult Function(String correctAnswer) loadOptions,
  }) {
    return loadOptions(correctAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMultiplayer, ChallengeType? challengeType)?
        started,
    TResult? Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function(String? userId)? ended,
    TResult? Function(String correctAnswer)? loadOptions,
  }) {
    return loadOptions?.call(correctAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMultiplayer, ChallengeType? challengeType)? started,
    TResult Function(bool isCorrect, Duration timeSpent)? answerSubmitted,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(String? userId)? ended,
    TResult Function(String correctAnswer)? loadOptions,
    required TResult orElse(),
  }) {
    if (loadOptions != null) {
      return loadOptions(correctAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStarted value) started,
    required TResult Function(GameAnswerSubmitted value) answerSubmitted,
    required TResult Function(GamePaused value) paused,
    required TResult Function(GameResumed value) resumed,
    required TResult Function(GameEnded value) ended,
    required TResult Function(LoadOptions value) loadOptions,
  }) {
    return loadOptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStarted value)? started,
    TResult? Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult? Function(GamePaused value)? paused,
    TResult? Function(GameResumed value)? resumed,
    TResult? Function(GameEnded value)? ended,
    TResult? Function(LoadOptions value)? loadOptions,
  }) {
    return loadOptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStarted value)? started,
    TResult Function(GameAnswerSubmitted value)? answerSubmitted,
    TResult Function(GamePaused value)? paused,
    TResult Function(GameResumed value)? resumed,
    TResult Function(GameEnded value)? ended,
    TResult Function(LoadOptions value)? loadOptions,
    required TResult orElse(),
  }) {
    if (loadOptions != null) {
      return loadOptions(this);
    }
    return orElse();
  }
}

abstract class LoadOptions implements GameEvent {
  const factory LoadOptions({required final String correctAnswer}) =
      _$LoadOptionsImpl;

  String get correctAnswer;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadOptionsImplCopyWith<_$LoadOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
