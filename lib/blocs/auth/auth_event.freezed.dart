// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)
        signUpWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)?
        signUpWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)?
        signUpWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignInWithEmailAndPasswordImplCopyWith<$Res> {
  factory _$$SignInWithEmailAndPasswordImplCopyWith(
          _$SignInWithEmailAndPasswordImpl value,
          $Res Function(_$SignInWithEmailAndPasswordImpl) then) =
      __$$SignInWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithEmailAndPasswordImpl>
    implements _$$SignInWithEmailAndPasswordImplCopyWith<$Res> {
  __$$SignInWithEmailAndPasswordImplCopyWithImpl(
      _$SignInWithEmailAndPasswordImpl _value,
      $Res Function(_$SignInWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInWithEmailAndPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInWithEmailAndPasswordImpl implements SignInWithEmailAndPassword {
  const _$SignInWithEmailAndPasswordImpl(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithEmailAndPasswordImplCopyWith<_$SignInWithEmailAndPasswordImpl>
      get copyWith => __$$SignInWithEmailAndPasswordImplCopyWithImpl<
          _$SignInWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)
        signUpWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthStatus,
  }) {
    return signInWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)?
        signUpWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthStatus,
  }) {
    return signInWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)?
        signUpWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthStatus,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
  }) {
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
  }) {
    return signInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPassword implements AuthEvent {
  const factory SignInWithEmailAndPassword(
      {required final String email,
      required final String password}) = _$SignInWithEmailAndPasswordImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInWithEmailAndPasswordImplCopyWith<_$SignInWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpWithEmailAndPasswordImplCopyWith<$Res> {
  factory _$$SignUpWithEmailAndPasswordImplCopyWith(
          _$SignUpWithEmailAndPasswordImpl value,
          $Res Function(_$SignUpWithEmailAndPasswordImpl) then) =
      __$$SignUpWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String password,
      LanguageModel preferredLanguage,
      LanguageModel learningLanguage});
}

/// @nodoc
class __$$SignUpWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpWithEmailAndPasswordImpl>
    implements _$$SignUpWithEmailAndPasswordImplCopyWith<$Res> {
  __$$SignUpWithEmailAndPasswordImplCopyWithImpl(
      _$SignUpWithEmailAndPasswordImpl _value,
      $Res Function(_$SignUpWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? preferredLanguage = null,
    Object? learningLanguage = null,
  }) {
    return _then(_$SignUpWithEmailAndPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      preferredLanguage: null == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
      learningLanguage: null == learningLanguage
          ? _value.learningLanguage
          : learningLanguage // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
    ));
  }
}

/// @nodoc

class _$SignUpWithEmailAndPasswordImpl implements SignUpWithEmailAndPassword {
  const _$SignUpWithEmailAndPasswordImpl(
      {required this.email,
      required this.password,
      required this.preferredLanguage,
      required this.learningLanguage});

  @override
  final String email;
  @override
  final String password;
  @override
  final LanguageModel preferredLanguage;
  @override
  final LanguageModel learningLanguage;

  @override
  String toString() {
    return 'AuthEvent.signUpWithEmailAndPassword(email: $email, password: $password, preferredLanguage: $preferredLanguage, learningLanguage: $learningLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpWithEmailAndPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.preferredLanguage, preferredLanguage) ||
                other.preferredLanguage == preferredLanguage) &&
            (identical(other.learningLanguage, learningLanguage) ||
                other.learningLanguage == learningLanguage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, preferredLanguage, learningLanguage);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpWithEmailAndPasswordImplCopyWith<_$SignUpWithEmailAndPasswordImpl>
      get copyWith => __$$SignUpWithEmailAndPasswordImplCopyWithImpl<
          _$SignUpWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)
        signUpWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthStatus,
  }) {
    return signUpWithEmailAndPassword(
        email, password, preferredLanguage, learningLanguage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)?
        signUpWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthStatus,
  }) {
    return signUpWithEmailAndPassword?.call(
        email, password, preferredLanguage, learningLanguage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)?
        signUpWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthStatus,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPassword != null) {
      return signUpWithEmailAndPassword(
          email, password, preferredLanguage, learningLanguage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
  }) {
    return signUpWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
  }) {
    return signUpWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPassword != null) {
      return signUpWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignUpWithEmailAndPassword implements AuthEvent {
  const factory SignUpWithEmailAndPassword(
          {required final String email,
          required final String password,
          required final LanguageModel preferredLanguage,
          required final LanguageModel learningLanguage}) =
      _$SignUpWithEmailAndPasswordImpl;

  String get email;
  String get password;
  LanguageModel get preferredLanguage;
  LanguageModel get learningLanguage;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpWithEmailAndPasswordImplCopyWith<_$SignUpWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignOutImpl implements SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)
        signUpWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthStatus,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)?
        signUpWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthStatus,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)?
        signUpWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthStatus,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$CheckAuthStatusImplCopyWith<$Res> {
  factory _$$CheckAuthStatusImplCopyWith(_$CheckAuthStatusImpl value,
          $Res Function(_$CheckAuthStatusImpl) then) =
      __$$CheckAuthStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAuthStatusImpl>
    implements _$$CheckAuthStatusImplCopyWith<$Res> {
  __$$CheckAuthStatusImplCopyWithImpl(
      _$CheckAuthStatusImpl _value, $Res Function(_$CheckAuthStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckAuthStatusImpl implements CheckAuthStatus {
  const _$CheckAuthStatusImpl();

  @override
  String toString() {
    return 'AuthEvent.checkAuthStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)
        signUpWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthStatus,
  }) {
    return checkAuthStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)?
        signUpWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthStatus,
  }) {
    return checkAuthStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password,
            LanguageModel preferredLanguage, LanguageModel learningLanguage)?
        signUpWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthStatus,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
  }) {
    return checkAuthStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
  }) {
    return checkAuthStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus(this);
    }
    return orElse();
  }
}

abstract class CheckAuthStatus implements AuthEvent {
  const factory CheckAuthStatus() = _$CheckAuthStatusImpl;
}
