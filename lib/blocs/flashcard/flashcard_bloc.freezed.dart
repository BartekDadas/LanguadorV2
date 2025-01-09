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
    required TResult Function(String? deckName) loadFlashcards,
    required TResult Function(String topic, String language, String difficulty)
        generateNewFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
    required TResult Function(Flashcard flashcard) addFlashcard,
    required TResult Function(Flashcard flashcard) putAsideFlashcard,
    required TResult Function() deleteFlashcards,
    required TResult Function(String deckName) changeDeck,
    required TResult Function(String deckName, DeckService deckService)
        loadDeckFlashcards,
    required TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)
        saveToDeck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? deckName)? loadFlashcards,
    TResult? Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
    TResult? Function(Flashcard flashcard)? addFlashcard,
    TResult? Function(Flashcard flashcard)? putAsideFlashcard,
    TResult? Function()? deleteFlashcards,
    TResult? Function(String deckName)? changeDeck,
    TResult? Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult? Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? deckName)? loadFlashcards,
    TResult Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    TResult Function(Flashcard flashcard)? addFlashcard,
    TResult Function(Flashcard flashcard)? putAsideFlashcard,
    TResult Function()? deleteFlashcards,
    TResult Function(String deckName)? changeDeck,
    TResult Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFlashcards value) loadFlashcards,
    required TResult Function(_GenerateFlashcards value) generateNewFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
    required TResult Function(_AddFlashcard value) addFlashcard,
    required TResult Function(_PutAsideFlashcard value) putAsideFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcards,
    required TResult Function(_ChangeDeck value) changeDeck,
    required TResult Function(_LoadDeckFlashcards value) loadDeckFlashcards,
    required TResult Function(_SaveToDeck value) saveToDeck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
    TResult? Function(_AddFlashcard value)? addFlashcard,
    TResult? Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult? Function(_ChangeDeck value)? changeDeck,
    TResult? Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult? Function(_SaveToDeck value)? saveToDeck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    TResult Function(_AddFlashcard value)? addFlashcard,
    TResult Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult Function(_ChangeDeck value)? changeDeck,
    TResult Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult Function(_SaveToDeck value)? saveToDeck,
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
  $Res call({String? deckName});
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
    Object? deckName = freezed,
  }) {
    return _then(_$LoadFlashcardsImpl(
      deckName: freezed == deckName
          ? _value.deckName
          : deckName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadFlashcardsImpl implements _LoadFlashcards {
  const _$LoadFlashcardsImpl({this.deckName});

// required String language,
// required String difficulty,
  @override
  final String? deckName;

  @override
  String toString() {
    return 'FlashcardEvent.loadFlashcards(deckName: $deckName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFlashcardsImpl &&
            (identical(other.deckName, deckName) ||
                other.deckName == deckName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deckName);

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
    required TResult Function(String? deckName) loadFlashcards,
    required TResult Function(String topic, String language, String difficulty)
        generateNewFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
    required TResult Function(Flashcard flashcard) addFlashcard,
    required TResult Function(Flashcard flashcard) putAsideFlashcard,
    required TResult Function() deleteFlashcards,
    required TResult Function(String deckName) changeDeck,
    required TResult Function(String deckName, DeckService deckService)
        loadDeckFlashcards,
    required TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)
        saveToDeck,
  }) {
    return loadFlashcards(deckName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? deckName)? loadFlashcards,
    TResult? Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
    TResult? Function(Flashcard flashcard)? addFlashcard,
    TResult? Function(Flashcard flashcard)? putAsideFlashcard,
    TResult? Function()? deleteFlashcards,
    TResult? Function(String deckName)? changeDeck,
    TResult? Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult? Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
  }) {
    return loadFlashcards?.call(deckName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? deckName)? loadFlashcards,
    TResult Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    TResult Function(Flashcard flashcard)? addFlashcard,
    TResult Function(Flashcard flashcard)? putAsideFlashcard,
    TResult Function()? deleteFlashcards,
    TResult Function(String deckName)? changeDeck,
    TResult Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
    required TResult orElse(),
  }) {
    if (loadFlashcards != null) {
      return loadFlashcards(deckName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFlashcards value) loadFlashcards,
    required TResult Function(_GenerateFlashcards value) generateNewFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
    required TResult Function(_AddFlashcard value) addFlashcard,
    required TResult Function(_PutAsideFlashcard value) putAsideFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcards,
    required TResult Function(_ChangeDeck value) changeDeck,
    required TResult Function(_LoadDeckFlashcards value) loadDeckFlashcards,
    required TResult Function(_SaveToDeck value) saveToDeck,
  }) {
    return loadFlashcards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
    TResult? Function(_AddFlashcard value)? addFlashcard,
    TResult? Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult? Function(_ChangeDeck value)? changeDeck,
    TResult? Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult? Function(_SaveToDeck value)? saveToDeck,
  }) {
    return loadFlashcards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    TResult Function(_AddFlashcard value)? addFlashcard,
    TResult Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult Function(_ChangeDeck value)? changeDeck,
    TResult Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult Function(_SaveToDeck value)? saveToDeck,
    required TResult orElse(),
  }) {
    if (loadFlashcards != null) {
      return loadFlashcards(this);
    }
    return orElse();
  }
}

abstract class _LoadFlashcards implements FlashcardEvent {
  const factory _LoadFlashcards({final String? deckName}) =
      _$LoadFlashcardsImpl;

// required String language,
// required String difficulty,
  String? get deckName;

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFlashcardsImplCopyWith<_$LoadFlashcardsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateFlashcardsImplCopyWith<$Res> {
  factory _$$GenerateFlashcardsImplCopyWith(_$GenerateFlashcardsImpl value,
          $Res Function(_$GenerateFlashcardsImpl) then) =
      __$$GenerateFlashcardsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String topic, String language, String difficulty});
}

/// @nodoc
class __$$GenerateFlashcardsImplCopyWithImpl<$Res>
    extends _$FlashcardEventCopyWithImpl<$Res, _$GenerateFlashcardsImpl>
    implements _$$GenerateFlashcardsImplCopyWith<$Res> {
  __$$GenerateFlashcardsImplCopyWithImpl(_$GenerateFlashcardsImpl _value,
      $Res Function(_$GenerateFlashcardsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? language = null,
    Object? difficulty = null,
  }) {
    return _then(_$GenerateFlashcardsImpl(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$GenerateFlashcardsImpl implements _GenerateFlashcards {
  const _$GenerateFlashcardsImpl(
      {required this.topic, required this.language, required this.difficulty});

  @override
  final String topic;
  @override
  final String language;
  @override
  final String difficulty;

  @override
  String toString() {
    return 'FlashcardEvent.generateNewFlashcards(topic: $topic, language: $language, difficulty: $difficulty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateFlashcardsImpl &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic, language, difficulty);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateFlashcardsImplCopyWith<_$GenerateFlashcardsImpl> get copyWith =>
      __$$GenerateFlashcardsImplCopyWithImpl<_$GenerateFlashcardsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? deckName) loadFlashcards,
    required TResult Function(String topic, String language, String difficulty)
        generateNewFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
    required TResult Function(Flashcard flashcard) addFlashcard,
    required TResult Function(Flashcard flashcard) putAsideFlashcard,
    required TResult Function() deleteFlashcards,
    required TResult Function(String deckName) changeDeck,
    required TResult Function(String deckName, DeckService deckService)
        loadDeckFlashcards,
    required TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)
        saveToDeck,
  }) {
    return generateNewFlashcards(topic, language, difficulty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? deckName)? loadFlashcards,
    TResult? Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
    TResult? Function(Flashcard flashcard)? addFlashcard,
    TResult? Function(Flashcard flashcard)? putAsideFlashcard,
    TResult? Function()? deleteFlashcards,
    TResult? Function(String deckName)? changeDeck,
    TResult? Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult? Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
  }) {
    return generateNewFlashcards?.call(topic, language, difficulty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? deckName)? loadFlashcards,
    TResult Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    TResult Function(Flashcard flashcard)? addFlashcard,
    TResult Function(Flashcard flashcard)? putAsideFlashcard,
    TResult Function()? deleteFlashcards,
    TResult Function(String deckName)? changeDeck,
    TResult Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
    required TResult orElse(),
  }) {
    if (generateNewFlashcards != null) {
      return generateNewFlashcards(topic, language, difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFlashcards value) loadFlashcards,
    required TResult Function(_GenerateFlashcards value) generateNewFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
    required TResult Function(_AddFlashcard value) addFlashcard,
    required TResult Function(_PutAsideFlashcard value) putAsideFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcards,
    required TResult Function(_ChangeDeck value) changeDeck,
    required TResult Function(_LoadDeckFlashcards value) loadDeckFlashcards,
    required TResult Function(_SaveToDeck value) saveToDeck,
  }) {
    return generateNewFlashcards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
    TResult? Function(_AddFlashcard value)? addFlashcard,
    TResult? Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult? Function(_ChangeDeck value)? changeDeck,
    TResult? Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult? Function(_SaveToDeck value)? saveToDeck,
  }) {
    return generateNewFlashcards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    TResult Function(_AddFlashcard value)? addFlashcard,
    TResult Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult Function(_ChangeDeck value)? changeDeck,
    TResult Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult Function(_SaveToDeck value)? saveToDeck,
    required TResult orElse(),
  }) {
    if (generateNewFlashcards != null) {
      return generateNewFlashcards(this);
    }
    return orElse();
  }
}

abstract class _GenerateFlashcards implements FlashcardEvent {
  const factory _GenerateFlashcards(
      {required final String topic,
      required final String language,
      required final String difficulty}) = _$GenerateFlashcardsImpl;

  String get topic;
  String get language;
  String get difficulty;

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateFlashcardsImplCopyWith<_$GenerateFlashcardsImpl> get copyWith =>
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
    required TResult Function(String? deckName) loadFlashcards,
    required TResult Function(String topic, String language, String difficulty)
        generateNewFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
    required TResult Function(Flashcard flashcard) addFlashcard,
    required TResult Function(Flashcard flashcard) putAsideFlashcard,
    required TResult Function() deleteFlashcards,
    required TResult Function(String deckName) changeDeck,
    required TResult Function(String deckName, DeckService deckService)
        loadDeckFlashcards,
    required TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)
        saveToDeck,
  }) {
    return markAsLearned(flashcardId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? deckName)? loadFlashcards,
    TResult? Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
    TResult? Function(Flashcard flashcard)? addFlashcard,
    TResult? Function(Flashcard flashcard)? putAsideFlashcard,
    TResult? Function()? deleteFlashcards,
    TResult? Function(String deckName)? changeDeck,
    TResult? Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult? Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
  }) {
    return markAsLearned?.call(flashcardId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? deckName)? loadFlashcards,
    TResult Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    TResult Function(Flashcard flashcard)? addFlashcard,
    TResult Function(Flashcard flashcard)? putAsideFlashcard,
    TResult Function()? deleteFlashcards,
    TResult Function(String deckName)? changeDeck,
    TResult Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
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
    required TResult Function(_GenerateFlashcards value) generateNewFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
    required TResult Function(_AddFlashcard value) addFlashcard,
    required TResult Function(_PutAsideFlashcard value) putAsideFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcards,
    required TResult Function(_ChangeDeck value) changeDeck,
    required TResult Function(_LoadDeckFlashcards value) loadDeckFlashcards,
    required TResult Function(_SaveToDeck value) saveToDeck,
  }) {
    return markAsLearned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
    TResult? Function(_AddFlashcard value)? addFlashcard,
    TResult? Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult? Function(_ChangeDeck value)? changeDeck,
    TResult? Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult? Function(_SaveToDeck value)? saveToDeck,
  }) {
    return markAsLearned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    TResult Function(_AddFlashcard value)? addFlashcard,
    TResult Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult Function(_ChangeDeck value)? changeDeck,
    TResult Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult Function(_SaveToDeck value)? saveToDeck,
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
    required TResult Function(String? deckName) loadFlashcards,
    required TResult Function(String topic, String language, String difficulty)
        generateNewFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
    required TResult Function(Flashcard flashcard) addFlashcard,
    required TResult Function(Flashcard flashcard) putAsideFlashcard,
    required TResult Function() deleteFlashcards,
    required TResult Function(String deckName) changeDeck,
    required TResult Function(String deckName, DeckService deckService)
        loadDeckFlashcards,
    required TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)
        saveToDeck,
  }) {
    return reviewLater(flashcardId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? deckName)? loadFlashcards,
    TResult? Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
    TResult? Function(Flashcard flashcard)? addFlashcard,
    TResult? Function(Flashcard flashcard)? putAsideFlashcard,
    TResult? Function()? deleteFlashcards,
    TResult? Function(String deckName)? changeDeck,
    TResult? Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult? Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
  }) {
    return reviewLater?.call(flashcardId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? deckName)? loadFlashcards,
    TResult Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    TResult Function(Flashcard flashcard)? addFlashcard,
    TResult Function(Flashcard flashcard)? putAsideFlashcard,
    TResult Function()? deleteFlashcards,
    TResult Function(String deckName)? changeDeck,
    TResult Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
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
    required TResult Function(_GenerateFlashcards value) generateNewFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
    required TResult Function(_AddFlashcard value) addFlashcard,
    required TResult Function(_PutAsideFlashcard value) putAsideFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcards,
    required TResult Function(_ChangeDeck value) changeDeck,
    required TResult Function(_LoadDeckFlashcards value) loadDeckFlashcards,
    required TResult Function(_SaveToDeck value) saveToDeck,
  }) {
    return reviewLater(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
    TResult? Function(_AddFlashcard value)? addFlashcard,
    TResult? Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult? Function(_ChangeDeck value)? changeDeck,
    TResult? Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult? Function(_SaveToDeck value)? saveToDeck,
  }) {
    return reviewLater?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    TResult Function(_AddFlashcard value)? addFlashcard,
    TResult Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult Function(_ChangeDeck value)? changeDeck,
    TResult Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult Function(_SaveToDeck value)? saveToDeck,
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
abstract class _$$AddFlashcardImplCopyWith<$Res> {
  factory _$$AddFlashcardImplCopyWith(
          _$AddFlashcardImpl value, $Res Function(_$AddFlashcardImpl) then) =
      __$$AddFlashcardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Flashcard flashcard});

  $FlashcardCopyWith<$Res> get flashcard;
}

/// @nodoc
class __$$AddFlashcardImplCopyWithImpl<$Res>
    extends _$FlashcardEventCopyWithImpl<$Res, _$AddFlashcardImpl>
    implements _$$AddFlashcardImplCopyWith<$Res> {
  __$$AddFlashcardImplCopyWithImpl(
      _$AddFlashcardImpl _value, $Res Function(_$AddFlashcardImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashcard = null,
  }) {
    return _then(_$AddFlashcardImpl(
      flashcard: null == flashcard
          ? _value.flashcard
          : flashcard // ignore: cast_nullable_to_non_nullable
              as Flashcard,
    ));
  }

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlashcardCopyWith<$Res> get flashcard {
    return $FlashcardCopyWith<$Res>(_value.flashcard, (value) {
      return _then(_value.copyWith(flashcard: value));
    });
  }
}

/// @nodoc

class _$AddFlashcardImpl implements _AddFlashcard {
  const _$AddFlashcardImpl({required this.flashcard});

  @override
  final Flashcard flashcard;

  @override
  String toString() {
    return 'FlashcardEvent.addFlashcard(flashcard: $flashcard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFlashcardImpl &&
            (identical(other.flashcard, flashcard) ||
                other.flashcard == flashcard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flashcard);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFlashcardImplCopyWith<_$AddFlashcardImpl> get copyWith =>
      __$$AddFlashcardImplCopyWithImpl<_$AddFlashcardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? deckName) loadFlashcards,
    required TResult Function(String topic, String language, String difficulty)
        generateNewFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
    required TResult Function(Flashcard flashcard) addFlashcard,
    required TResult Function(Flashcard flashcard) putAsideFlashcard,
    required TResult Function() deleteFlashcards,
    required TResult Function(String deckName) changeDeck,
    required TResult Function(String deckName, DeckService deckService)
        loadDeckFlashcards,
    required TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)
        saveToDeck,
  }) {
    return addFlashcard(flashcard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? deckName)? loadFlashcards,
    TResult? Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
    TResult? Function(Flashcard flashcard)? addFlashcard,
    TResult? Function(Flashcard flashcard)? putAsideFlashcard,
    TResult? Function()? deleteFlashcards,
    TResult? Function(String deckName)? changeDeck,
    TResult? Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult? Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
  }) {
    return addFlashcard?.call(flashcard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? deckName)? loadFlashcards,
    TResult Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    TResult Function(Flashcard flashcard)? addFlashcard,
    TResult Function(Flashcard flashcard)? putAsideFlashcard,
    TResult Function()? deleteFlashcards,
    TResult Function(String deckName)? changeDeck,
    TResult Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
    required TResult orElse(),
  }) {
    if (addFlashcard != null) {
      return addFlashcard(flashcard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFlashcards value) loadFlashcards,
    required TResult Function(_GenerateFlashcards value) generateNewFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
    required TResult Function(_AddFlashcard value) addFlashcard,
    required TResult Function(_PutAsideFlashcard value) putAsideFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcards,
    required TResult Function(_ChangeDeck value) changeDeck,
    required TResult Function(_LoadDeckFlashcards value) loadDeckFlashcards,
    required TResult Function(_SaveToDeck value) saveToDeck,
  }) {
    return addFlashcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
    TResult? Function(_AddFlashcard value)? addFlashcard,
    TResult? Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult? Function(_ChangeDeck value)? changeDeck,
    TResult? Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult? Function(_SaveToDeck value)? saveToDeck,
  }) {
    return addFlashcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    TResult Function(_AddFlashcard value)? addFlashcard,
    TResult Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult Function(_ChangeDeck value)? changeDeck,
    TResult Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult Function(_SaveToDeck value)? saveToDeck,
    required TResult orElse(),
  }) {
    if (addFlashcard != null) {
      return addFlashcard(this);
    }
    return orElse();
  }
}

abstract class _AddFlashcard implements FlashcardEvent {
  const factory _AddFlashcard({required final Flashcard flashcard}) =
      _$AddFlashcardImpl;

  Flashcard get flashcard;

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFlashcardImplCopyWith<_$AddFlashcardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PutAsideFlashcardImplCopyWith<$Res> {
  factory _$$PutAsideFlashcardImplCopyWith(_$PutAsideFlashcardImpl value,
          $Res Function(_$PutAsideFlashcardImpl) then) =
      __$$PutAsideFlashcardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Flashcard flashcard});

  $FlashcardCopyWith<$Res> get flashcard;
}

/// @nodoc
class __$$PutAsideFlashcardImplCopyWithImpl<$Res>
    extends _$FlashcardEventCopyWithImpl<$Res, _$PutAsideFlashcardImpl>
    implements _$$PutAsideFlashcardImplCopyWith<$Res> {
  __$$PutAsideFlashcardImplCopyWithImpl(_$PutAsideFlashcardImpl _value,
      $Res Function(_$PutAsideFlashcardImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashcard = null,
  }) {
    return _then(_$PutAsideFlashcardImpl(
      flashcard: null == flashcard
          ? _value.flashcard
          : flashcard // ignore: cast_nullable_to_non_nullable
              as Flashcard,
    ));
  }

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlashcardCopyWith<$Res> get flashcard {
    return $FlashcardCopyWith<$Res>(_value.flashcard, (value) {
      return _then(_value.copyWith(flashcard: value));
    });
  }
}

/// @nodoc

class _$PutAsideFlashcardImpl implements _PutAsideFlashcard {
  const _$PutAsideFlashcardImpl({required this.flashcard});

  @override
  final Flashcard flashcard;

  @override
  String toString() {
    return 'FlashcardEvent.putAsideFlashcard(flashcard: $flashcard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PutAsideFlashcardImpl &&
            (identical(other.flashcard, flashcard) ||
                other.flashcard == flashcard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flashcard);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PutAsideFlashcardImplCopyWith<_$PutAsideFlashcardImpl> get copyWith =>
      __$$PutAsideFlashcardImplCopyWithImpl<_$PutAsideFlashcardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? deckName) loadFlashcards,
    required TResult Function(String topic, String language, String difficulty)
        generateNewFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
    required TResult Function(Flashcard flashcard) addFlashcard,
    required TResult Function(Flashcard flashcard) putAsideFlashcard,
    required TResult Function() deleteFlashcards,
    required TResult Function(String deckName) changeDeck,
    required TResult Function(String deckName, DeckService deckService)
        loadDeckFlashcards,
    required TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)
        saveToDeck,
  }) {
    return putAsideFlashcard(flashcard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? deckName)? loadFlashcards,
    TResult? Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
    TResult? Function(Flashcard flashcard)? addFlashcard,
    TResult? Function(Flashcard flashcard)? putAsideFlashcard,
    TResult? Function()? deleteFlashcards,
    TResult? Function(String deckName)? changeDeck,
    TResult? Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult? Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
  }) {
    return putAsideFlashcard?.call(flashcard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? deckName)? loadFlashcards,
    TResult Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    TResult Function(Flashcard flashcard)? addFlashcard,
    TResult Function(Flashcard flashcard)? putAsideFlashcard,
    TResult Function()? deleteFlashcards,
    TResult Function(String deckName)? changeDeck,
    TResult Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
    required TResult orElse(),
  }) {
    if (putAsideFlashcard != null) {
      return putAsideFlashcard(flashcard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFlashcards value) loadFlashcards,
    required TResult Function(_GenerateFlashcards value) generateNewFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
    required TResult Function(_AddFlashcard value) addFlashcard,
    required TResult Function(_PutAsideFlashcard value) putAsideFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcards,
    required TResult Function(_ChangeDeck value) changeDeck,
    required TResult Function(_LoadDeckFlashcards value) loadDeckFlashcards,
    required TResult Function(_SaveToDeck value) saveToDeck,
  }) {
    return putAsideFlashcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
    TResult? Function(_AddFlashcard value)? addFlashcard,
    TResult? Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult? Function(_ChangeDeck value)? changeDeck,
    TResult? Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult? Function(_SaveToDeck value)? saveToDeck,
  }) {
    return putAsideFlashcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    TResult Function(_AddFlashcard value)? addFlashcard,
    TResult Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult Function(_ChangeDeck value)? changeDeck,
    TResult Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult Function(_SaveToDeck value)? saveToDeck,
    required TResult orElse(),
  }) {
    if (putAsideFlashcard != null) {
      return putAsideFlashcard(this);
    }
    return orElse();
  }
}

abstract class _PutAsideFlashcard implements FlashcardEvent {
  const factory _PutAsideFlashcard({required final Flashcard flashcard}) =
      _$PutAsideFlashcardImpl;

  Flashcard get flashcard;

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PutAsideFlashcardImplCopyWith<_$PutAsideFlashcardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFlashcardImplCopyWith<$Res> {
  factory _$$DeleteFlashcardImplCopyWith(_$DeleteFlashcardImpl value,
          $Res Function(_$DeleteFlashcardImpl) then) =
      __$$DeleteFlashcardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteFlashcardImplCopyWithImpl<$Res>
    extends _$FlashcardEventCopyWithImpl<$Res, _$DeleteFlashcardImpl>
    implements _$$DeleteFlashcardImplCopyWith<$Res> {
  __$$DeleteFlashcardImplCopyWithImpl(
      _$DeleteFlashcardImpl _value, $Res Function(_$DeleteFlashcardImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteFlashcardImpl implements _DeleteFlashcard {
  const _$DeleteFlashcardImpl();

  @override
  String toString() {
    return 'FlashcardEvent.deleteFlashcards()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteFlashcardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? deckName) loadFlashcards,
    required TResult Function(String topic, String language, String difficulty)
        generateNewFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
    required TResult Function(Flashcard flashcard) addFlashcard,
    required TResult Function(Flashcard flashcard) putAsideFlashcard,
    required TResult Function() deleteFlashcards,
    required TResult Function(String deckName) changeDeck,
    required TResult Function(String deckName, DeckService deckService)
        loadDeckFlashcards,
    required TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)
        saveToDeck,
  }) {
    return deleteFlashcards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? deckName)? loadFlashcards,
    TResult? Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
    TResult? Function(Flashcard flashcard)? addFlashcard,
    TResult? Function(Flashcard flashcard)? putAsideFlashcard,
    TResult? Function()? deleteFlashcards,
    TResult? Function(String deckName)? changeDeck,
    TResult? Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult? Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
  }) {
    return deleteFlashcards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? deckName)? loadFlashcards,
    TResult Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    TResult Function(Flashcard flashcard)? addFlashcard,
    TResult Function(Flashcard flashcard)? putAsideFlashcard,
    TResult Function()? deleteFlashcards,
    TResult Function(String deckName)? changeDeck,
    TResult Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
    required TResult orElse(),
  }) {
    if (deleteFlashcards != null) {
      return deleteFlashcards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFlashcards value) loadFlashcards,
    required TResult Function(_GenerateFlashcards value) generateNewFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
    required TResult Function(_AddFlashcard value) addFlashcard,
    required TResult Function(_PutAsideFlashcard value) putAsideFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcards,
    required TResult Function(_ChangeDeck value) changeDeck,
    required TResult Function(_LoadDeckFlashcards value) loadDeckFlashcards,
    required TResult Function(_SaveToDeck value) saveToDeck,
  }) {
    return deleteFlashcards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
    TResult? Function(_AddFlashcard value)? addFlashcard,
    TResult? Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult? Function(_ChangeDeck value)? changeDeck,
    TResult? Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult? Function(_SaveToDeck value)? saveToDeck,
  }) {
    return deleteFlashcards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    TResult Function(_AddFlashcard value)? addFlashcard,
    TResult Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult Function(_ChangeDeck value)? changeDeck,
    TResult Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult Function(_SaveToDeck value)? saveToDeck,
    required TResult orElse(),
  }) {
    if (deleteFlashcards != null) {
      return deleteFlashcards(this);
    }
    return orElse();
  }
}

abstract class _DeleteFlashcard implements FlashcardEvent {
  const factory _DeleteFlashcard() = _$DeleteFlashcardImpl;
}

/// @nodoc
abstract class _$$ChangeDeckImplCopyWith<$Res> {
  factory _$$ChangeDeckImplCopyWith(
          _$ChangeDeckImpl value, $Res Function(_$ChangeDeckImpl) then) =
      __$$ChangeDeckImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String deckName});
}

/// @nodoc
class __$$ChangeDeckImplCopyWithImpl<$Res>
    extends _$FlashcardEventCopyWithImpl<$Res, _$ChangeDeckImpl>
    implements _$$ChangeDeckImplCopyWith<$Res> {
  __$$ChangeDeckImplCopyWithImpl(
      _$ChangeDeckImpl _value, $Res Function(_$ChangeDeckImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckName = null,
  }) {
    return _then(_$ChangeDeckImpl(
      deckName: null == deckName
          ? _value.deckName
          : deckName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeDeckImpl implements _ChangeDeck {
  const _$ChangeDeckImpl({required this.deckName});

  @override
  final String deckName;

  @override
  String toString() {
    return 'FlashcardEvent.changeDeck(deckName: $deckName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDeckImpl &&
            (identical(other.deckName, deckName) ||
                other.deckName == deckName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deckName);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDeckImplCopyWith<_$ChangeDeckImpl> get copyWith =>
      __$$ChangeDeckImplCopyWithImpl<_$ChangeDeckImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? deckName) loadFlashcards,
    required TResult Function(String topic, String language, String difficulty)
        generateNewFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
    required TResult Function(Flashcard flashcard) addFlashcard,
    required TResult Function(Flashcard flashcard) putAsideFlashcard,
    required TResult Function() deleteFlashcards,
    required TResult Function(String deckName) changeDeck,
    required TResult Function(String deckName, DeckService deckService)
        loadDeckFlashcards,
    required TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)
        saveToDeck,
  }) {
    return changeDeck(deckName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? deckName)? loadFlashcards,
    TResult? Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
    TResult? Function(Flashcard flashcard)? addFlashcard,
    TResult? Function(Flashcard flashcard)? putAsideFlashcard,
    TResult? Function()? deleteFlashcards,
    TResult? Function(String deckName)? changeDeck,
    TResult? Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult? Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
  }) {
    return changeDeck?.call(deckName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? deckName)? loadFlashcards,
    TResult Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    TResult Function(Flashcard flashcard)? addFlashcard,
    TResult Function(Flashcard flashcard)? putAsideFlashcard,
    TResult Function()? deleteFlashcards,
    TResult Function(String deckName)? changeDeck,
    TResult Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
    required TResult orElse(),
  }) {
    if (changeDeck != null) {
      return changeDeck(deckName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFlashcards value) loadFlashcards,
    required TResult Function(_GenerateFlashcards value) generateNewFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
    required TResult Function(_AddFlashcard value) addFlashcard,
    required TResult Function(_PutAsideFlashcard value) putAsideFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcards,
    required TResult Function(_ChangeDeck value) changeDeck,
    required TResult Function(_LoadDeckFlashcards value) loadDeckFlashcards,
    required TResult Function(_SaveToDeck value) saveToDeck,
  }) {
    return changeDeck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
    TResult? Function(_AddFlashcard value)? addFlashcard,
    TResult? Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult? Function(_ChangeDeck value)? changeDeck,
    TResult? Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult? Function(_SaveToDeck value)? saveToDeck,
  }) {
    return changeDeck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    TResult Function(_AddFlashcard value)? addFlashcard,
    TResult Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult Function(_ChangeDeck value)? changeDeck,
    TResult Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult Function(_SaveToDeck value)? saveToDeck,
    required TResult orElse(),
  }) {
    if (changeDeck != null) {
      return changeDeck(this);
    }
    return orElse();
  }
}

abstract class _ChangeDeck implements FlashcardEvent {
  const factory _ChangeDeck({required final String deckName}) =
      _$ChangeDeckImpl;

  String get deckName;

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeDeckImplCopyWith<_$ChangeDeckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadDeckFlashcardsImplCopyWith<$Res> {
  factory _$$LoadDeckFlashcardsImplCopyWith(_$LoadDeckFlashcardsImpl value,
          $Res Function(_$LoadDeckFlashcardsImpl) then) =
      __$$LoadDeckFlashcardsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String deckName, DeckService deckService});
}

/// @nodoc
class __$$LoadDeckFlashcardsImplCopyWithImpl<$Res>
    extends _$FlashcardEventCopyWithImpl<$Res, _$LoadDeckFlashcardsImpl>
    implements _$$LoadDeckFlashcardsImplCopyWith<$Res> {
  __$$LoadDeckFlashcardsImplCopyWithImpl(_$LoadDeckFlashcardsImpl _value,
      $Res Function(_$LoadDeckFlashcardsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckName = null,
    Object? deckService = null,
  }) {
    return _then(_$LoadDeckFlashcardsImpl(
      deckName: null == deckName
          ? _value.deckName
          : deckName // ignore: cast_nullable_to_non_nullable
              as String,
      deckService: null == deckService
          ? _value.deckService
          : deckService // ignore: cast_nullable_to_non_nullable
              as DeckService,
    ));
  }
}

/// @nodoc

class _$LoadDeckFlashcardsImpl implements _LoadDeckFlashcards {
  const _$LoadDeckFlashcardsImpl(
      {required this.deckName, required this.deckService});

  @override
  final String deckName;
  @override
  final DeckService deckService;

  @override
  String toString() {
    return 'FlashcardEvent.loadDeckFlashcards(deckName: $deckName, deckService: $deckService)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDeckFlashcardsImpl &&
            (identical(other.deckName, deckName) ||
                other.deckName == deckName) &&
            (identical(other.deckService, deckService) ||
                other.deckService == deckService));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deckName, deckService);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDeckFlashcardsImplCopyWith<_$LoadDeckFlashcardsImpl> get copyWith =>
      __$$LoadDeckFlashcardsImplCopyWithImpl<_$LoadDeckFlashcardsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? deckName) loadFlashcards,
    required TResult Function(String topic, String language, String difficulty)
        generateNewFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
    required TResult Function(Flashcard flashcard) addFlashcard,
    required TResult Function(Flashcard flashcard) putAsideFlashcard,
    required TResult Function() deleteFlashcards,
    required TResult Function(String deckName) changeDeck,
    required TResult Function(String deckName, DeckService deckService)
        loadDeckFlashcards,
    required TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)
        saveToDeck,
  }) {
    return loadDeckFlashcards(deckName, deckService);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? deckName)? loadFlashcards,
    TResult? Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
    TResult? Function(Flashcard flashcard)? addFlashcard,
    TResult? Function(Flashcard flashcard)? putAsideFlashcard,
    TResult? Function()? deleteFlashcards,
    TResult? Function(String deckName)? changeDeck,
    TResult? Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult? Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
  }) {
    return loadDeckFlashcards?.call(deckName, deckService);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? deckName)? loadFlashcards,
    TResult Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    TResult Function(Flashcard flashcard)? addFlashcard,
    TResult Function(Flashcard flashcard)? putAsideFlashcard,
    TResult Function()? deleteFlashcards,
    TResult Function(String deckName)? changeDeck,
    TResult Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
    required TResult orElse(),
  }) {
    if (loadDeckFlashcards != null) {
      return loadDeckFlashcards(deckName, deckService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFlashcards value) loadFlashcards,
    required TResult Function(_GenerateFlashcards value) generateNewFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
    required TResult Function(_AddFlashcard value) addFlashcard,
    required TResult Function(_PutAsideFlashcard value) putAsideFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcards,
    required TResult Function(_ChangeDeck value) changeDeck,
    required TResult Function(_LoadDeckFlashcards value) loadDeckFlashcards,
    required TResult Function(_SaveToDeck value) saveToDeck,
  }) {
    return loadDeckFlashcards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
    TResult? Function(_AddFlashcard value)? addFlashcard,
    TResult? Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult? Function(_ChangeDeck value)? changeDeck,
    TResult? Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult? Function(_SaveToDeck value)? saveToDeck,
  }) {
    return loadDeckFlashcards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    TResult Function(_AddFlashcard value)? addFlashcard,
    TResult Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult Function(_ChangeDeck value)? changeDeck,
    TResult Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult Function(_SaveToDeck value)? saveToDeck,
    required TResult orElse(),
  }) {
    if (loadDeckFlashcards != null) {
      return loadDeckFlashcards(this);
    }
    return orElse();
  }
}

abstract class _LoadDeckFlashcards implements FlashcardEvent {
  const factory _LoadDeckFlashcards(
      {required final String deckName,
      required final DeckService deckService}) = _$LoadDeckFlashcardsImpl;

  String get deckName;
  DeckService get deckService;

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadDeckFlashcardsImplCopyWith<_$LoadDeckFlashcardsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveToDeckImplCopyWith<$Res> {
  factory _$$SaveToDeckImplCopyWith(
          _$SaveToDeckImpl value, $Res Function(_$SaveToDeckImpl) then) =
      __$$SaveToDeckImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String deckName, DeckService deckService, List<Flashcard> flashcards});
}

/// @nodoc
class __$$SaveToDeckImplCopyWithImpl<$Res>
    extends _$FlashcardEventCopyWithImpl<$Res, _$SaveToDeckImpl>
    implements _$$SaveToDeckImplCopyWith<$Res> {
  __$$SaveToDeckImplCopyWithImpl(
      _$SaveToDeckImpl _value, $Res Function(_$SaveToDeckImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckName = null,
    Object? deckService = null,
    Object? flashcards = null,
  }) {
    return _then(_$SaveToDeckImpl(
      deckName: null == deckName
          ? _value.deckName
          : deckName // ignore: cast_nullable_to_non_nullable
              as String,
      deckService: null == deckService
          ? _value.deckService
          : deckService // ignore: cast_nullable_to_non_nullable
              as DeckService,
      flashcards: null == flashcards
          ? _value._flashcards
          : flashcards // ignore: cast_nullable_to_non_nullable
              as List<Flashcard>,
    ));
  }
}

/// @nodoc

class _$SaveToDeckImpl implements _SaveToDeck {
  const _$SaveToDeckImpl(
      {required this.deckName,
      required this.deckService,
      required final List<Flashcard> flashcards})
      : _flashcards = flashcards;

  @override
  final String deckName;
  @override
  final DeckService deckService;
  final List<Flashcard> _flashcards;
  @override
  List<Flashcard> get flashcards {
    if (_flashcards is EqualUnmodifiableListView) return _flashcards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flashcards);
  }

  @override
  String toString() {
    return 'FlashcardEvent.saveToDeck(deckName: $deckName, deckService: $deckService, flashcards: $flashcards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveToDeckImpl &&
            (identical(other.deckName, deckName) ||
                other.deckName == deckName) &&
            (identical(other.deckService, deckService) ||
                other.deckService == deckService) &&
            const DeepCollectionEquality()
                .equals(other._flashcards, _flashcards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deckName, deckService,
      const DeepCollectionEquality().hash(_flashcards));

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveToDeckImplCopyWith<_$SaveToDeckImpl> get copyWith =>
      __$$SaveToDeckImplCopyWithImpl<_$SaveToDeckImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? deckName) loadFlashcards,
    required TResult Function(String topic, String language, String difficulty)
        generateNewFlashcards,
    required TResult Function(String flashcardId) markAsLearned,
    required TResult Function(String flashcardId) reviewLater,
    required TResult Function(Flashcard flashcard) addFlashcard,
    required TResult Function(Flashcard flashcard) putAsideFlashcard,
    required TResult Function() deleteFlashcards,
    required TResult Function(String deckName) changeDeck,
    required TResult Function(String deckName, DeckService deckService)
        loadDeckFlashcards,
    required TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)
        saveToDeck,
  }) {
    return saveToDeck(deckName, deckService, flashcards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? deckName)? loadFlashcards,
    TResult? Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult? Function(String flashcardId)? markAsLearned,
    TResult? Function(String flashcardId)? reviewLater,
    TResult? Function(Flashcard flashcard)? addFlashcard,
    TResult? Function(Flashcard flashcard)? putAsideFlashcard,
    TResult? Function()? deleteFlashcards,
    TResult? Function(String deckName)? changeDeck,
    TResult? Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult? Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
  }) {
    return saveToDeck?.call(deckName, deckService, flashcards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? deckName)? loadFlashcards,
    TResult Function(String topic, String language, String difficulty)?
        generateNewFlashcards,
    TResult Function(String flashcardId)? markAsLearned,
    TResult Function(String flashcardId)? reviewLater,
    TResult Function(Flashcard flashcard)? addFlashcard,
    TResult Function(Flashcard flashcard)? putAsideFlashcard,
    TResult Function()? deleteFlashcards,
    TResult Function(String deckName)? changeDeck,
    TResult Function(String deckName, DeckService deckService)?
        loadDeckFlashcards,
    TResult Function(String deckName, DeckService deckService,
            List<Flashcard> flashcards)?
        saveToDeck,
    required TResult orElse(),
  }) {
    if (saveToDeck != null) {
      return saveToDeck(deckName, deckService, flashcards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFlashcards value) loadFlashcards,
    required TResult Function(_GenerateFlashcards value) generateNewFlashcards,
    required TResult Function(_MarkAsLearned value) markAsLearned,
    required TResult Function(_ReviewLater value) reviewLater,
    required TResult Function(_AddFlashcard value) addFlashcard,
    required TResult Function(_PutAsideFlashcard value) putAsideFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcards,
    required TResult Function(_ChangeDeck value) changeDeck,
    required TResult Function(_LoadDeckFlashcards value) loadDeckFlashcards,
    required TResult Function(_SaveToDeck value) saveToDeck,
  }) {
    return saveToDeck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFlashcards value)? loadFlashcards,
    TResult? Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult? Function(_MarkAsLearned value)? markAsLearned,
    TResult? Function(_ReviewLater value)? reviewLater,
    TResult? Function(_AddFlashcard value)? addFlashcard,
    TResult? Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult? Function(_ChangeDeck value)? changeDeck,
    TResult? Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult? Function(_SaveToDeck value)? saveToDeck,
  }) {
    return saveToDeck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFlashcards value)? loadFlashcards,
    TResult Function(_GenerateFlashcards value)? generateNewFlashcards,
    TResult Function(_MarkAsLearned value)? markAsLearned,
    TResult Function(_ReviewLater value)? reviewLater,
    TResult Function(_AddFlashcard value)? addFlashcard,
    TResult Function(_PutAsideFlashcard value)? putAsideFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcards,
    TResult Function(_ChangeDeck value)? changeDeck,
    TResult Function(_LoadDeckFlashcards value)? loadDeckFlashcards,
    TResult Function(_SaveToDeck value)? saveToDeck,
    required TResult orElse(),
  }) {
    if (saveToDeck != null) {
      return saveToDeck(this);
    }
    return orElse();
  }
}

abstract class _SaveToDeck implements FlashcardEvent {
  const factory _SaveToDeck(
      {required final String deckName,
      required final DeckService deckService,
      required final List<Flashcard> flashcards}) = _$SaveToDeckImpl;

  String get deckName;
  DeckService get deckService;
  List<Flashcard> get flashcards;

  /// Create a copy of FlashcardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveToDeckImplCopyWith<_$SaveToDeckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FlashcardState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  List<Flashcard>? get generated => throw _privateConstructorUsedError;
  List<Flashcard>? get flashcards => throw _privateConstructorUsedError;
  List<Flashcard>? get learned => throw _privateConstructorUsedError;
  List<Flashcard>? get putAside => throw _privateConstructorUsedError;
  String get deckName => throw _privateConstructorUsedError;

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashcardStateCopyWith<FlashcardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardStateCopyWith<$Res> {
  factory $FlashcardStateCopyWith(
          FlashcardState value, $Res Function(FlashcardState) then) =
      _$FlashcardStateCopyWithImpl<$Res, FlashcardState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? error,
      String language,
      String difficulty,
      List<Flashcard>? generated,
      List<Flashcard>? flashcards,
      List<Flashcard>? learned,
      List<Flashcard>? putAside,
      String deckName});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? language = null,
    Object? difficulty = null,
    Object? generated = freezed,
    Object? flashcards = freezed,
    Object? learned = freezed,
    Object? putAside = freezed,
    Object? deckName = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      generated: freezed == generated
          ? _value.generated
          : generated // ignore: cast_nullable_to_non_nullable
              as List<Flashcard>?,
      flashcards: freezed == flashcards
          ? _value.flashcards
          : flashcards // ignore: cast_nullable_to_non_nullable
              as List<Flashcard>?,
      learned: freezed == learned
          ? _value.learned
          : learned // ignore: cast_nullable_to_non_nullable
              as List<Flashcard>?,
      putAside: freezed == putAside
          ? _value.putAside
          : putAside // ignore: cast_nullable_to_non_nullable
              as List<Flashcard>?,
      deckName: null == deckName
          ? _value.deckName
          : deckName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashcardStateImplCopyWith<$Res>
    implements $FlashcardStateCopyWith<$Res> {
  factory _$$FlashcardStateImplCopyWith(_$FlashcardStateImpl value,
          $Res Function(_$FlashcardStateImpl) then) =
      __$$FlashcardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? error,
      String language,
      String difficulty,
      List<Flashcard>? generated,
      List<Flashcard>? flashcards,
      List<Flashcard>? learned,
      List<Flashcard>? putAside,
      String deckName});
}

/// @nodoc
class __$$FlashcardStateImplCopyWithImpl<$Res>
    extends _$FlashcardStateCopyWithImpl<$Res, _$FlashcardStateImpl>
    implements _$$FlashcardStateImplCopyWith<$Res> {
  __$$FlashcardStateImplCopyWithImpl(
      _$FlashcardStateImpl _value, $Res Function(_$FlashcardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? language = null,
    Object? difficulty = null,
    Object? generated = freezed,
    Object? flashcards = freezed,
    Object? learned = freezed,
    Object? putAside = freezed,
    Object? deckName = null,
  }) {
    return _then(_$FlashcardStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      generated: freezed == generated
          ? _value._generated
          : generated // ignore: cast_nullable_to_non_nullable
              as List<Flashcard>?,
      flashcards: freezed == flashcards
          ? _value._flashcards
          : flashcards // ignore: cast_nullable_to_non_nullable
              as List<Flashcard>?,
      learned: freezed == learned
          ? _value._learned
          : learned // ignore: cast_nullable_to_non_nullable
              as List<Flashcard>?,
      putAside: freezed == putAside
          ? _value._putAside
          : putAside // ignore: cast_nullable_to_non_nullable
              as List<Flashcard>?,
      deckName: null == deckName
          ? _value.deckName
          : deckName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FlashcardStateImpl implements _FlashcardState {
  const _$FlashcardStateImpl(
      {this.isLoading = false,
      this.error,
      this.language = 'en',
      this.difficulty = 'beginner',
      final List<Flashcard>? generated,
      final List<Flashcard>? flashcards,
      final List<Flashcard>? learned,
      final List<Flashcard>? putAside,
      this.deckName = 'all'})
      : _generated = generated,
        _flashcards = flashcards,
        _learned = learned,
        _putAside = putAside;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final String difficulty;
  final List<Flashcard>? _generated;
  @override
  List<Flashcard>? get generated {
    final value = _generated;
    if (value == null) return null;
    if (_generated is EqualUnmodifiableListView) return _generated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Flashcard>? _flashcards;
  @override
  List<Flashcard>? get flashcards {
    final value = _flashcards;
    if (value == null) return null;
    if (_flashcards is EqualUnmodifiableListView) return _flashcards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Flashcard>? _learned;
  @override
  List<Flashcard>? get learned {
    final value = _learned;
    if (value == null) return null;
    if (_learned is EqualUnmodifiableListView) return _learned;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Flashcard>? _putAside;
  @override
  List<Flashcard>? get putAside {
    final value = _putAside;
    if (value == null) return null;
    if (_putAside is EqualUnmodifiableListView) return _putAside;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String deckName;

  @override
  String toString() {
    return 'FlashcardState(isLoading: $isLoading, error: $error, language: $language, difficulty: $difficulty, generated: $generated, flashcards: $flashcards, learned: $learned, putAside: $putAside, deckName: $deckName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashcardStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality()
                .equals(other._generated, _generated) &&
            const DeepCollectionEquality()
                .equals(other._flashcards, _flashcards) &&
            const DeepCollectionEquality().equals(other._learned, _learned) &&
            const DeepCollectionEquality().equals(other._putAside, _putAside) &&
            (identical(other.deckName, deckName) ||
                other.deckName == deckName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      error,
      language,
      difficulty,
      const DeepCollectionEquality().hash(_generated),
      const DeepCollectionEquality().hash(_flashcards),
      const DeepCollectionEquality().hash(_learned),
      const DeepCollectionEquality().hash(_putAside),
      deckName);

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashcardStateImplCopyWith<_$FlashcardStateImpl> get copyWith =>
      __$$FlashcardStateImplCopyWithImpl<_$FlashcardStateImpl>(
          this, _$identity);
}

abstract class _FlashcardState implements FlashcardState {
  const factory _FlashcardState(
      {final bool isLoading,
      final String? error,
      final String language,
      final String difficulty,
      final List<Flashcard>? generated,
      final List<Flashcard>? flashcards,
      final List<Flashcard>? learned,
      final List<Flashcard>? putAside,
      final String deckName}) = _$FlashcardStateImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  String get language;
  @override
  String get difficulty;
  @override
  List<Flashcard>? get generated;
  @override
  List<Flashcard>? get flashcards;
  @override
  List<Flashcard>? get learned;
  @override
  List<Flashcard>? get putAside;
  @override
  String get deckName;

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashcardStateImplCopyWith<_$FlashcardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
