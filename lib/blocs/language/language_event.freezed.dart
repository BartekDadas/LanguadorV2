// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLanguages,
    required TResult Function(LanguageModel language, bool isKnow)
        selectLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLanguages,
    TResult? Function(LanguageModel language, bool isKnow)? selectLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLanguages,
    TResult Function(LanguageModel language, bool isKnow)? selectLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadLanguages value) loadLanguages,
    required TResult Function(SelectLanguage value) selectLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadLanguages value)? loadLanguages,
    TResult? Function(SelectLanguage value)? selectLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadLanguages value)? loadLanguages,
    TResult Function(SelectLanguage value)? selectLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res, LanguageEvent>;
}

/// @nodoc
class _$LanguageEventCopyWithImpl<$Res, $Val extends LanguageEvent>
    implements $LanguageEventCopyWith<$Res> {
  _$LanguageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadLanguagesImplCopyWith<$Res> {
  factory _$$LoadLanguagesImplCopyWith(
          _$LoadLanguagesImpl value, $Res Function(_$LoadLanguagesImpl) then) =
      __$$LoadLanguagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadLanguagesImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$LoadLanguagesImpl>
    implements _$$LoadLanguagesImplCopyWith<$Res> {
  __$$LoadLanguagesImplCopyWithImpl(
      _$LoadLanguagesImpl _value, $Res Function(_$LoadLanguagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadLanguagesImpl implements LoadLanguages {
  const _$LoadLanguagesImpl();

  @override
  String toString() {
    return 'LanguageEvent.loadLanguages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadLanguagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLanguages,
    required TResult Function(LanguageModel language, bool isKnow)
        selectLanguage,
  }) {
    return loadLanguages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLanguages,
    TResult? Function(LanguageModel language, bool isKnow)? selectLanguage,
  }) {
    return loadLanguages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLanguages,
    TResult Function(LanguageModel language, bool isKnow)? selectLanguage,
    required TResult orElse(),
  }) {
    if (loadLanguages != null) {
      return loadLanguages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadLanguages value) loadLanguages,
    required TResult Function(SelectLanguage value) selectLanguage,
  }) {
    return loadLanguages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadLanguages value)? loadLanguages,
    TResult? Function(SelectLanguage value)? selectLanguage,
  }) {
    return loadLanguages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadLanguages value)? loadLanguages,
    TResult Function(SelectLanguage value)? selectLanguage,
    required TResult orElse(),
  }) {
    if (loadLanguages != null) {
      return loadLanguages(this);
    }
    return orElse();
  }
}

abstract class LoadLanguages implements LanguageEvent {
  const factory LoadLanguages() = _$LoadLanguagesImpl;
}

/// @nodoc
abstract class _$$SelectLanguageImplCopyWith<$Res> {
  factory _$$SelectLanguageImplCopyWith(_$SelectLanguageImpl value,
          $Res Function(_$SelectLanguageImpl) then) =
      __$$SelectLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LanguageModel language, bool isKnow});
}

/// @nodoc
class __$$SelectLanguageImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$SelectLanguageImpl>
    implements _$$SelectLanguageImplCopyWith<$Res> {
  __$$SelectLanguageImplCopyWithImpl(
      _$SelectLanguageImpl _value, $Res Function(_$SelectLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? isKnow = null,
  }) {
    return _then(_$SelectLanguageImpl(
      null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
      isKnow: null == isKnow
          ? _value.isKnow
          : isKnow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectLanguageImpl implements SelectLanguage {
  const _$SelectLanguageImpl(this.language, {required this.isKnow});

  @override
  final LanguageModel language;
  @override
  final bool isKnow;

  @override
  String toString() {
    return 'LanguageEvent.selectLanguage(language: $language, isKnow: $isKnow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectLanguageImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.isKnow, isKnow) || other.isKnow == isKnow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language, isKnow);

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectLanguageImplCopyWith<_$SelectLanguageImpl> get copyWith =>
      __$$SelectLanguageImplCopyWithImpl<_$SelectLanguageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLanguages,
    required TResult Function(LanguageModel language, bool isKnow)
        selectLanguage,
  }) {
    return selectLanguage(language, isKnow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLanguages,
    TResult? Function(LanguageModel language, bool isKnow)? selectLanguage,
  }) {
    return selectLanguage?.call(language, isKnow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLanguages,
    TResult Function(LanguageModel language, bool isKnow)? selectLanguage,
    required TResult orElse(),
  }) {
    if (selectLanguage != null) {
      return selectLanguage(language, isKnow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadLanguages value) loadLanguages,
    required TResult Function(SelectLanguage value) selectLanguage,
  }) {
    return selectLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadLanguages value)? loadLanguages,
    TResult? Function(SelectLanguage value)? selectLanguage,
  }) {
    return selectLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadLanguages value)? loadLanguages,
    TResult Function(SelectLanguage value)? selectLanguage,
    required TResult orElse(),
  }) {
    if (selectLanguage != null) {
      return selectLanguage(this);
    }
    return orElse();
  }
}

abstract class SelectLanguage implements LanguageEvent {
  const factory SelectLanguage(final LanguageModel language,
      {required final bool isKnow}) = _$SelectLanguageImpl;

  LanguageModel get language;
  bool get isKnow;

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectLanguageImplCopyWith<_$SelectLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
