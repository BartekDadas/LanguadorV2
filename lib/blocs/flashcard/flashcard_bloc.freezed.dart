// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlashcardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String language, String difficulty)
        loadFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String language, String difficulty)? loadFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String language, String difficulty)? loadFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFlashcards value) loadFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardEventCopyWith<$Res> {
  factory $FlashcardEventCopyWith(
          FlashcardEvent value, $Res Function(FlashcardEvent) then) =
      _$FlashcardEventCopyWithImpl<$Res, FlashcardEvent>;
}

/// @nodoc
class _$FlashcardEventCopyWithImpl<$Res, $Val extends FlashcardEvent>
    implements $FlashcardEventCopyWith<$Res> {
  _$FlashcardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadFlashcardsImplCopyWith<$Res> {
  factory _$$LoadFlashcardsImplCopyWith(_$LoadFlashcardsImpl value,
          $Res Function(_$LoadFlashcardsImpl) then) =
      __$$LoadFlashcardsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String language, String difficulty});
}

/// @nodoc
class __$$LoadFlashcardsImplCopyWithImpl<$Res>
    extends _$FlashcardEventCopyWithImpl<$Res, _$LoadFlashcardsImpl>
    implements _$$LoadFlashcardsImplCopyWith<$Res> {
  __$$LoadFlashcardsImplCopyWithImpl(
      _$LoadFlashcardsImpl _value, $Res Function(_$LoadFlashcardsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? difficulty = null,
  }) {
    return _then(_$LoadFlashcardsImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadFlashcardsImpl implements _LoadFlashcards {
  const _$LoadFlashcardsImpl(
      {required this.language, required this.difficulty});

  @override
  final String language;
  @override
  final String difficulty;

  @override
  String toString() {
    return 'FlashcardEvent.loadFlashcards(language: $language, difficulty: $difficulty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFlashcardsImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language, difficulty);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFlashcardsImplCopyWith<_$LoadFlashcardsImpl> get copyWith =>
      __$$LoadFlashcardsImplCopyWithImpl<_$LoadFlashcardsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String language, String difficulty)
        loadFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
  }) {
    return loadFlashcards(language, difficulty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String language, String difficulty)? loadFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
  }) {
    return loadFlashcards?.call(language, difficulty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String language, String difficulty)? loadFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    required TResult orElse(),
  }) {
    if (loadFlashcards != null) {
      return loadFlashcards(language, difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFlashcards value) loadFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
  }) {
    return loadFlashcards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
  }) {
    return loadFlashcards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    required TResult orElse(),
  }) {
    if (loadFlashcards != null) {
      return loadFlashcards(this);
    }
    return orElse();
  }
}

abstract class _LoadFlashcards implements FlashcardEvent {
  const factory _LoadFlashcards(
      {required final String language,
      required final String difficulty}) = _$LoadFlashcardsImpl;

  String get language;
  String get difficulty;

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFlashcardsImplCopyWith<_$LoadFlashcardsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAsLearnedImplCopyWith<$Res> {
  factory _$$MarkAsLearnedImplCopyWith(
          _$MarkAsLearnedImpl value, $Res Function(_$MarkAsLearnedImpl) then) =
      __$$MarkAsLearnedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String flashcardId});
}

/// @nodoc
class __$$MarkAsLearnedImplCopyWithImpl<$Res>
    extends _$FlashcardEventCopyWithImpl<$Res, _$MarkAsLearnedImpl>
    implements _$$MarkAsLearnedImplCopyWith<$Res> {
  __$$MarkAsLearnedImplCopyWithImpl(
      _$MarkAsLearnedImpl _value, $Res Function(_$MarkAsLearnedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashcardId = null,
  }) {
    return _then(_$MarkAsLearnedImpl(
      flashcardId: null == flashcardId
          ? _value.flashcardId
          : flashcardId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkAsLearnedImpl implements _MarkAsLearned {
  const _$MarkAsLearnedImpl({required this.flashcardId});

  @override
  final String flashcardId;

  @override
  String toString() {
    return 'FlashcardEvent.markAsLearned(flashcardId: $flashcardId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsLearnedImpl &&
            (identical(other.flashcardId, flashcardId) ||
                other.flashcardId == flashcardId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flashcardId);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsLearnedImplCopyWith<_$MarkAsLearnedImpl> get copyWith =>
      __$$MarkAsLearnedImplCopyWithImpl<_$MarkAsLearnedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String language, String difficulty)
        loadFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
  }) {
    return markAsLearned(flashcardId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String language, String difficulty)? loadFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
  }) {
    return markAsLearned?.call(flashcardId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String language, String difficulty)? loadFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    required TResult orElse(),
  }) {
    if (markAsLearned != null) {
      return markAsLearned(flashcardId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFlashcards value) loadFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
  }) {
    return markAsLearned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
  }) {
    return markAsLearned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    required TResult orElse(),
  }) {
    if (markAsLearned != null) {
      return markAsLearned(this);
    }
    return orElse();
  }
}

abstract class _MarkAsLearned implements FlashcardEvent {
  const factory _MarkAsLearned({required final String flashcardId}) =
      _$MarkAsLearnedImpl;

  String get flashcardId;

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkAsLearnedImplCopyWith<_$MarkAsLearnedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewLaterImplCopyWith<$Res> {
  factory _$$ReviewLaterImplCopyWith(
          _$ReviewLaterImpl value, $Res Function(_$ReviewLaterImpl) then) =
      __$$ReviewLaterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String flashcardId});
}

/// @nodoc
class __$$ReviewLaterImplCopyWithImpl<$Res>
    extends _$FlashcardEventCopyWithImpl<$Res, _$ReviewLaterImpl>
    implements _$$ReviewLaterImplCopyWith<$Res> {
  __$$ReviewLaterImplCopyWithImpl(
      _$ReviewLaterImpl _value, $Res Function(_$ReviewLaterImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashcardId = null,
  }) {
    return _then(_$ReviewLaterImpl(
      flashcardId: null == flashcardId
          ? _value.flashcardId
          : flashcardId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReviewLaterImpl implements _ReviewLater {
  const _$ReviewLaterImpl({required this.flashcardId});

  @override
  final String flashcardId;

  @override
  String toString() {
    return 'FlashcardEvent.reviewLater(flashcardId: $flashcardId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewLaterImpl &&
            (identical(other.flashcardId, flashcardId) ||
                other.flashcardId == flashcardId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flashcardId);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewLaterImplCopyWith<_$ReviewLaterImpl> get copyWith =>
      __$$ReviewLaterImplCopyWithImpl<_$ReviewLaterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String language, String difficulty)
        loadFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
  }) {
    return reviewLater(flashcardId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String language, String difficulty)? loadFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
  }) {
    return reviewLater?.call(flashcardId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String language, String difficulty)? loadFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    required TResult orElse(),
  }) {
    if (reviewLater != null) {
      return reviewLater(flashcardId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFlashcards value) loadFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
  }) {
    return reviewLater(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
  }) {
    return reviewLater?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    required TResult orElse(),
  }) {
    if (reviewLater != null) {
      return reviewLater(this);
    }
    return orElse();
  }
}

abstract class _ReviewLater implements FlashcardEvent {
  const factory _ReviewLater({required final String flashcardId}) =
      _$ReviewLaterImpl;

  String get flashcardId;

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewLaterImplCopyWith<_$ReviewLaterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FlashcardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Flashcard> flashcards) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Flashcard> flashcards)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Flashcard> flashcards)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardStateCopyWith<$Res> {
  factory $FlashcardStateCopyWith(
          FlashcardState value, $Res Function(FlashcardState) then) =
      _$FlashcardStateCopyWithImpl<$Res, FlashcardState>;
}

/// @nodoc
class _$FlashcardStateCopyWithImpl<$Res, $Val extends FlashcardState>
    implements $FlashcardStateCopyWith<$Res> {
  _$FlashcardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FlashcardStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FlashcardState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Flashcard> flashcards) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Flashcard> flashcards)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Flashcard> flashcards)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FlashcardState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$FlashcardStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FlashcardState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Flashcard> flashcards) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Flashcard> flashcards)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Flashcard> flashcards)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FlashcardState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Flashcard> flashcards});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$FlashcardStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashcards = null,
  }) {
    return _then(_$LoadedImpl(
      flashcards: null == flashcards
          ? _value._flashcards
          : flashcards // ignore: cast_nullable_to_non_nullable
              as List<Flashcard>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<Flashcard> flashcards})
      : _flashcards = flashcards;

  final List<Flashcard> _flashcards;
  @override
  List<Flashcard> get flashcards {
    if (_flashcards is EqualUnmodifiableListView) return _flashcards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flashcards);
  }

  @override
  String toString() {
    return 'FlashcardState.loaded(flashcards: $flashcards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._flashcards, _flashcards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_flashcards));

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Flashcard> flashcards) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(flashcards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Flashcard> flashcards)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(flashcards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Flashcard> flashcards)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(flashcards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FlashcardState {
  const factory _Loaded({required final List<Flashcard> flashcards}) =
      _$LoadedImpl;

  List<Flashcard> get flashcards;

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$FlashcardStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FlashcardState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Flashcard> flashcards) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Flashcard> flashcards)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Flashcard> flashcards)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FlashcardState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
