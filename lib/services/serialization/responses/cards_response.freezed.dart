// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cards_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardsResponse _$CardsResponseFromJson(Map<String, dynamic> json) {
  return Initialized.fromJson(json);
}

/// @nodoc
class _$CardsResponseTearOff {
  const _$CardsResponseTearOff();

  Initialized initialized(List<CardInitialized> cards, bool hasMoreCards) {
    return Initialized(
      cards,
      hasMoreCards,
    );
  }

  CardsResponse fromJson(Map<String, Object?> json) {
    return CardsResponse.fromJson(json);
  }
}

/// @nodoc
const $CardsResponse = _$CardsResponseTearOff();

/// @nodoc
mixin _$CardsResponse {
  List<CardInitialized> get cards => throw _privateConstructorUsedError;
  bool get hasMoreCards => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CardInitialized> cards, bool hasMoreCards)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CardInitialized> cards, bool hasMoreCards)?
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CardInitialized> cards, bool hasMoreCards)?
        initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardsResponseCopyWith<CardsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsResponseCopyWith<$Res> {
  factory $CardsResponseCopyWith(
          CardsResponse value, $Res Function(CardsResponse) then) =
      _$CardsResponseCopyWithImpl<$Res>;
  $Res call({List<CardInitialized> cards, bool hasMoreCards});
}

/// @nodoc
class _$CardsResponseCopyWithImpl<$Res>
    implements $CardsResponseCopyWith<$Res> {
  _$CardsResponseCopyWithImpl(this._value, this._then);

  final CardsResponse _value;
  // ignore: unused_field
  final $Res Function(CardsResponse) _then;

  @override
  $Res call({
    Object? cards = freezed,
    Object? hasMoreCards = freezed,
  }) {
    return _then(_value.copyWith(
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardInitialized>,
      hasMoreCards: hasMoreCards == freezed
          ? _value.hasMoreCards
          : hasMoreCards // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $InitializedCopyWith<$Res>
    implements $CardsResponseCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({List<CardInitialized> cards, bool hasMoreCards});
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res> extends _$CardsResponseCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object? cards = freezed,
    Object? hasMoreCards = freezed,
  }) {
    return _then(Initialized(
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardInitialized>,
      hasMoreCards == freezed
          ? _value.hasMoreCards
          : hasMoreCards // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Initialized implements Initialized {
  _$Initialized(this.cards, this.hasMoreCards);

  factory _$Initialized.fromJson(Map<String, dynamic> json) =>
      _$$InitializedFromJson(json);

  @override
  final List<CardInitialized> cards;
  @override
  final bool hasMoreCards;

  @override
  String toString() {
    return 'CardsResponse.initialized(cards: $cards, hasMoreCards: $hasMoreCards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialized &&
            const DeepCollectionEquality().equals(other.cards, cards) &&
            const DeepCollectionEquality()
                .equals(other.hasMoreCards, hasMoreCards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cards),
      const DeepCollectionEquality().hash(hasMoreCards));

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CardInitialized> cards, bool hasMoreCards)
        initialized,
  }) {
    return initialized(cards, hasMoreCards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CardInitialized> cards, bool hasMoreCards)?
        initialized,
  }) {
    return initialized?.call(cards, hasMoreCards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CardInitialized> cards, bool hasMoreCards)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(cards, hasMoreCards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitializedToJson(this);
  }
}

abstract class Initialized implements CardsResponse {
  factory Initialized(List<CardInitialized> cards, bool hasMoreCards) =
      _$Initialized;

  factory Initialized.fromJson(Map<String, dynamic> json) =
      _$Initialized.fromJson;

  @override
  List<CardInitialized> get cards;
  @override
  bool get hasMoreCards;
  @override
  @JsonKey(ignore: true)
  $InitializedCopyWith<Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}
