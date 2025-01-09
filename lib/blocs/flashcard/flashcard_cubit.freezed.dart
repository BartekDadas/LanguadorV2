// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlashcardCubitState {
  Map<String, bool> get flippedCards => throw _privateConstructorUsedError;

  /// Create a copy of FlashcardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashcardCubitStateCopyWith<FlashcardCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardCubitStateCopyWith<$Res> {
  factory $FlashcardCubitStateCopyWith(
          FlashcardCubitState value, $Res Function(FlashcardCubitState) then) =
      _$FlashcardCubitStateCopyWithImpl<$Res, FlashcardCubitState>;
  @useResult
  $Res call({Map<String, bool> flippedCards});
}

/// @nodoc
class _$FlashcardCubitStateCopyWithImpl<$Res, $Val extends FlashcardCubitState>
    implements $FlashcardCubitStateCopyWith<$Res> {
  _$FlashcardCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashcardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flippedCards = null,
  }) {
    return _then(_value.copyWith(
      flippedCards: null == flippedCards
          ? _value.flippedCards
          : flippedCards // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashcardCubitStateImplCopyWith<$Res>
    implements $FlashcardCubitStateCopyWith<$Res> {
  factory _$$FlashcardCubitStateImplCopyWith(_$FlashcardCubitStateImpl value,
          $Res Function(_$FlashcardCubitStateImpl) then) =
      __$$FlashcardCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, bool> flippedCards});
}

/// @nodoc
class __$$FlashcardCubitStateImplCopyWithImpl<$Res>
    extends _$FlashcardCubitStateCopyWithImpl<$Res, _$FlashcardCubitStateImpl>
    implements _$$FlashcardCubitStateImplCopyWith<$Res> {
  __$$FlashcardCubitStateImplCopyWithImpl(_$FlashcardCubitStateImpl _value,
      $Res Function(_$FlashcardCubitStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flippedCards = null,
  }) {
    return _then(_$FlashcardCubitStateImpl(
      flippedCards: null == flippedCards
          ? _value._flippedCards
          : flippedCards // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$FlashcardCubitStateImpl implements _FlashcardCubitState {
  const _$FlashcardCubitStateImpl(
      {final Map<String, bool> flippedCards = const {}})
      : _flippedCards = flippedCards;

  final Map<String, bool> _flippedCards;
  @override
  @JsonKey()
  Map<String, bool> get flippedCards {
    if (_flippedCards is EqualUnmodifiableMapView) return _flippedCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_flippedCards);
  }

  @override
  String toString() {
    return 'FlashcardCubitState(flippedCards: $flippedCards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashcardCubitStateImpl &&
            const DeepCollectionEquality()
                .equals(other._flippedCards, _flippedCards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_flippedCards));

  /// Create a copy of FlashcardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashcardCubitStateImplCopyWith<_$FlashcardCubitStateImpl> get copyWith =>
      __$$FlashcardCubitStateImplCopyWithImpl<_$FlashcardCubitStateImpl>(
          this, _$identity);
}

abstract class _FlashcardCubitState implements FlashcardCubitState {
  const factory _FlashcardCubitState({final Map<String, bool> flippedCards}) =
      _$FlashcardCubitStateImpl;

  @override
  Map<String, bool> get flippedCards;

  /// Create a copy of FlashcardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashcardCubitStateImplCopyWith<_$FlashcardCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
