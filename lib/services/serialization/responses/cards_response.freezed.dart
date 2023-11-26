// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cards_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardsResponse _$CardsResponseFromJson(Map<String, dynamic> json) {
  return Initialized.fromJson(json);
}

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
    TResult? Function(List<CardInitialized> cards, bool hasMoreCards)?
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
    TResult? Function(Initialized value)? initialized,
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
      _$CardsResponseCopyWithImpl<$Res, CardsResponse>;
  @useResult
  $Res call({List<CardInitialized> cards, bool hasMoreCards});
}

/// @nodoc
class _$CardsResponseCopyWithImpl<$Res, $Val extends CardsResponse>
    implements $CardsResponseCopyWith<$Res> {
  _$CardsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? hasMoreCards = null,
  }) {
    return _then(_value.copyWith(
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardInitialized>,
      hasMoreCards: null == hasMoreCards
          ? _value.hasMoreCards
          : hasMoreCards // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res>
    implements $CardsResponseCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CardInitialized> cards, bool hasMoreCards});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$CardsResponseCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? hasMoreCards = null,
  }) {
    return _then(_$InitializedImpl(
      null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardInitialized>,
      null == hasMoreCards
          ? _value.hasMoreCards
          : hasMoreCards // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitializedImpl implements Initialized {
  _$InitializedImpl(final List<CardInitialized> cards, this.hasMoreCards)
      : _cards = cards;

  factory _$InitializedImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitializedImplFromJson(json);

  final List<CardInitialized> _cards;
  @override
  List<CardInitialized> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

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
            other is _$InitializedImpl &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.hasMoreCards, hasMoreCards) ||
                other.hasMoreCards == hasMoreCards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cards), hasMoreCards);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

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
    TResult? Function(List<CardInitialized> cards, bool hasMoreCards)?
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
    TResult? Function(Initialized value)? initialized,
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
    return _$$InitializedImplToJson(
      this,
    );
  }
}

abstract class Initialized implements CardsResponse {
  factory Initialized(
          final List<CardInitialized> cards, final bool hasMoreCards) =
      _$InitializedImpl;

  factory Initialized.fromJson(Map<String, dynamic> json) =
      _$InitializedImpl.fromJson;

  @override
  List<CardInitialized> get cards;
  @override
  bool get hasMoreCards;
  @override
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
