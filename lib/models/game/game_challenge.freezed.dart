// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_challenge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameChallenge _$GameChallengeFromJson(Map<String, dynamic> json) {
  return _GameChallenge.fromJson(json);
}

/// @nodoc
mixin _$GameChallenge {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;
  String get correctAnswer => throw _privateConstructorUsedError;
  ChallengeType get type => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get audioUrl => throw _privateConstructorUsedError;

  /// Serializes this GameChallenge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameChallenge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameChallengeCopyWith<GameChallenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameChallengeCopyWith<$Res> {
  factory $GameChallengeCopyWith(
          GameChallenge value, $Res Function(GameChallenge) then) =
      _$GameChallengeCopyWithImpl<$Res, GameChallenge>;
  @useResult
  $Res call(
      {String id,
      String question,
      List<String> options,
      String correctAnswer,
      ChallengeType type,
      int points,
      String? imageUrl,
      String? audioUrl});
}

/// @nodoc
class _$GameChallengeCopyWithImpl<$Res, $Val extends GameChallenge>
    implements $GameChallengeCopyWith<$Res> {
  _$GameChallengeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameChallenge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? options = null,
    Object? correctAnswer = null,
    Object? type = null,
    Object? points = null,
    Object? imageUrl = freezed,
    Object? audioUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChallengeType,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameChallengeImplCopyWith<$Res>
    implements $GameChallengeCopyWith<$Res> {
  factory _$$GameChallengeImplCopyWith(
          _$GameChallengeImpl value, $Res Function(_$GameChallengeImpl) then) =
      __$$GameChallengeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      List<String> options,
      String correctAnswer,
      ChallengeType type,
      int points,
      String? imageUrl,
      String? audioUrl});
}

/// @nodoc
class __$$GameChallengeImplCopyWithImpl<$Res>
    extends _$GameChallengeCopyWithImpl<$Res, _$GameChallengeImpl>
    implements _$$GameChallengeImplCopyWith<$Res> {
  __$$GameChallengeImplCopyWithImpl(
      _$GameChallengeImpl _value, $Res Function(_$GameChallengeImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameChallenge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? options = null,
    Object? correctAnswer = null,
    Object? type = null,
    Object? points = null,
    Object? imageUrl = freezed,
    Object? audioUrl = freezed,
  }) {
    return _then(_$GameChallengeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChallengeType,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameChallengeImpl implements _GameChallenge {
  const _$GameChallengeImpl(
      {required this.id,
      required this.question,
      required final List<String> options,
      required this.correctAnswer,
      required this.type,
      this.points = 0,
      this.imageUrl,
      this.audioUrl})
      : _options = options;

  factory _$GameChallengeImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameChallengeImplFromJson(json);

  @override
  final String id;
  @override
  final String question;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final String correctAnswer;
  @override
  final ChallengeType type;
  @override
  @JsonKey()
  final int points;
  @override
  final String? imageUrl;
  @override
  final String? audioUrl;

  @override
  String toString() {
    return 'GameChallenge(id: $id, question: $question, options: $options, correctAnswer: $correctAnswer, type: $type, points: $points, imageUrl: $imageUrl, audioUrl: $audioUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameChallengeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      const DeepCollectionEquality().hash(_options),
      correctAnswer,
      type,
      points,
      imageUrl,
      audioUrl);

  /// Create a copy of GameChallenge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameChallengeImplCopyWith<_$GameChallengeImpl> get copyWith =>
      __$$GameChallengeImplCopyWithImpl<_$GameChallengeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameChallengeImplToJson(
      this,
    );
  }
}

abstract class _GameChallenge implements GameChallenge {
  const factory _GameChallenge(
      {required final String id,
      required final String question,
      required final List<String> options,
      required final String correctAnswer,
      required final ChallengeType type,
      final int points,
      final String? imageUrl,
      final String? audioUrl}) = _$GameChallengeImpl;

  factory _GameChallenge.fromJson(Map<String, dynamic> json) =
      _$GameChallengeImpl.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  List<String> get options;
  @override
  String get correctAnswer;
  @override
  ChallengeType get type;
  @override
  int get points;
  @override
  String? get imageUrl;
  @override
  String? get audioUrl;

  /// Create a copy of GameChallenge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameChallengeImplCopyWith<_$GameChallengeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
