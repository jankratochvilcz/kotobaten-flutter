// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cards_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CardsModelTearOff {
  const _$CardsModelTearOff();

  CardsModelInitial initial() {
    return CardsModelInitial();
  }

  CardsModelLoadingInitial loadingInitial() {
    return CardsModelLoadingInitial();
  }

  CardsModelInitialized initialized(List<CardInitialized> cards,
      int pagesLoaded, bool loadingNextPage, bool hasMoreCards) {
    return CardsModelInitialized(
      cards,
      pagesLoaded,
      loadingNextPage,
      hasMoreCards,
    );
  }
}

/// @nodoc
const $CardsModel = _$CardsModelTearOff();

/// @nodoc
mixin _$CardsModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInitial,
    required TResult Function(List<CardInitialized> cards, int pagesLoaded,
            bool loadingNextPage, bool hasMoreCards)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(List<CardInitialized> cards, int pagesLoaded,
            bool loadingNextPage, bool hasMoreCards)?
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(List<CardInitialized> cards, int pagesLoaded,
            bool loadingNextPage, bool hasMoreCards)?
        initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsModelInitial value) initial,
    required TResult Function(CardsModelLoadingInitial value) loadingInitial,
    required TResult Function(CardsModelInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardsModelInitial value)? initial,
    TResult Function(CardsModelLoadingInitial value)? loadingInitial,
    TResult Function(CardsModelInitialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsModelInitial value)? initial,
    TResult Function(CardsModelLoadingInitial value)? loadingInitial,
    TResult Function(CardsModelInitialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsModelCopyWith<$Res> {
  factory $CardsModelCopyWith(
          CardsModel value, $Res Function(CardsModel) then) =
      _$CardsModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardsModelCopyWithImpl<$Res> implements $CardsModelCopyWith<$Res> {
  _$CardsModelCopyWithImpl(this._value, this._then);

  final CardsModel _value;
  // ignore: unused_field
  final $Res Function(CardsModel) _then;
}

/// @nodoc
abstract class $CardsModelInitialCopyWith<$Res> {
  factory $CardsModelInitialCopyWith(
          CardsModelInitial value, $Res Function(CardsModelInitial) then) =
      _$CardsModelInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardsModelInitialCopyWithImpl<$Res>
    extends _$CardsModelCopyWithImpl<$Res>
    implements $CardsModelInitialCopyWith<$Res> {
  _$CardsModelInitialCopyWithImpl(
      CardsModelInitial _value, $Res Function(CardsModelInitial) _then)
      : super(_value, (v) => _then(v as CardsModelInitial));

  @override
  CardsModelInitial get _value => super._value as CardsModelInitial;
}

/// @nodoc

class _$CardsModelInitial extends CardsModelInitial {
  _$CardsModelInitial() : super._();

  @override
  String toString() {
    return 'CardsModel.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CardsModelInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInitial,
    required TResult Function(List<CardInitialized> cards, int pagesLoaded,
            bool loadingNextPage, bool hasMoreCards)
        initialized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(List<CardInitialized> cards, int pagesLoaded,
            bool loadingNextPage, bool hasMoreCards)?
        initialized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(List<CardInitialized> cards, int pagesLoaded,
            bool loadingNextPage, bool hasMoreCards)?
        initialized,
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
    required TResult Function(CardsModelInitial value) initial,
    required TResult Function(CardsModelLoadingInitial value) loadingInitial,
    required TResult Function(CardsModelInitialized value) initialized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardsModelInitial value)? initial,
    TResult Function(CardsModelLoadingInitial value)? loadingInitial,
    TResult Function(CardsModelInitialized value)? initialized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsModelInitial value)? initial,
    TResult Function(CardsModelLoadingInitial value)? loadingInitial,
    TResult Function(CardsModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CardsModelInitial extends CardsModel {
  factory CardsModelInitial() = _$CardsModelInitial;
  CardsModelInitial._() : super._();
}

/// @nodoc
abstract class $CardsModelLoadingInitialCopyWith<$Res> {
  factory $CardsModelLoadingInitialCopyWith(CardsModelLoadingInitial value,
          $Res Function(CardsModelLoadingInitial) then) =
      _$CardsModelLoadingInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardsModelLoadingInitialCopyWithImpl<$Res>
    extends _$CardsModelCopyWithImpl<$Res>
    implements $CardsModelLoadingInitialCopyWith<$Res> {
  _$CardsModelLoadingInitialCopyWithImpl(CardsModelLoadingInitial _value,
      $Res Function(CardsModelLoadingInitial) _then)
      : super(_value, (v) => _then(v as CardsModelLoadingInitial));

  @override
  CardsModelLoadingInitial get _value =>
      super._value as CardsModelLoadingInitial;
}

/// @nodoc

class _$CardsModelLoadingInitial extends CardsModelLoadingInitial {
  _$CardsModelLoadingInitial() : super._();

  @override
  String toString() {
    return 'CardsModel.loadingInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CardsModelLoadingInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInitial,
    required TResult Function(List<CardInitialized> cards, int pagesLoaded,
            bool loadingNextPage, bool hasMoreCards)
        initialized,
  }) {
    return loadingInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(List<CardInitialized> cards, int pagesLoaded,
            bool loadingNextPage, bool hasMoreCards)?
        initialized,
  }) {
    return loadingInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(List<CardInitialized> cards, int pagesLoaded,
            bool loadingNextPage, bool hasMoreCards)?
        initialized,
    required TResult orElse(),
  }) {
    if (loadingInitial != null) {
      return loadingInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsModelInitial value) initial,
    required TResult Function(CardsModelLoadingInitial value) loadingInitial,
    required TResult Function(CardsModelInitialized value) initialized,
  }) {
    return loadingInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardsModelInitial value)? initial,
    TResult Function(CardsModelLoadingInitial value)? loadingInitial,
    TResult Function(CardsModelInitialized value)? initialized,
  }) {
    return loadingInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsModelInitial value)? initial,
    TResult Function(CardsModelLoadingInitial value)? loadingInitial,
    TResult Function(CardsModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (loadingInitial != null) {
      return loadingInitial(this);
    }
    return orElse();
  }
}

abstract class CardsModelLoadingInitial extends CardsModel {
  factory CardsModelLoadingInitial() = _$CardsModelLoadingInitial;
  CardsModelLoadingInitial._() : super._();
}

/// @nodoc
abstract class $CardsModelInitializedCopyWith<$Res> {
  factory $CardsModelInitializedCopyWith(CardsModelInitialized value,
          $Res Function(CardsModelInitialized) then) =
      _$CardsModelInitializedCopyWithImpl<$Res>;
  $Res call(
      {List<CardInitialized> cards,
      int pagesLoaded,
      bool loadingNextPage,
      bool hasMoreCards});
}

/// @nodoc
class _$CardsModelInitializedCopyWithImpl<$Res>
    extends _$CardsModelCopyWithImpl<$Res>
    implements $CardsModelInitializedCopyWith<$Res> {
  _$CardsModelInitializedCopyWithImpl(
      CardsModelInitialized _value, $Res Function(CardsModelInitialized) _then)
      : super(_value, (v) => _then(v as CardsModelInitialized));

  @override
  CardsModelInitialized get _value => super._value as CardsModelInitialized;

  @override
  $Res call({
    Object? cards = freezed,
    Object? pagesLoaded = freezed,
    Object? loadingNextPage = freezed,
    Object? hasMoreCards = freezed,
  }) {
    return _then(CardsModelInitialized(
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardInitialized>,
      pagesLoaded == freezed
          ? _value.pagesLoaded
          : pagesLoaded // ignore: cast_nullable_to_non_nullable
              as int,
      loadingNextPage == freezed
          ? _value.loadingNextPage
          : loadingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreCards == freezed
          ? _value.hasMoreCards
          : hasMoreCards // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CardsModelInitialized extends CardsModelInitialized {
  _$CardsModelInitialized(
      this.cards, this.pagesLoaded, this.loadingNextPage, this.hasMoreCards)
      : super._();

  @override
  final List<CardInitialized> cards;
  @override
  final int pagesLoaded;
  @override
  final bool loadingNextPage;
  @override
  final bool hasMoreCards;

  @override
  String toString() {
    return 'CardsModel.initialized(cards: $cards, pagesLoaded: $pagesLoaded, loadingNextPage: $loadingNextPage, hasMoreCards: $hasMoreCards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardsModelInitialized &&
            const DeepCollectionEquality().equals(other.cards, cards) &&
            (identical(other.pagesLoaded, pagesLoaded) ||
                other.pagesLoaded == pagesLoaded) &&
            (identical(other.loadingNextPage, loadingNextPage) ||
                other.loadingNextPage == loadingNextPage) &&
            (identical(other.hasMoreCards, hasMoreCards) ||
                other.hasMoreCards == hasMoreCards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cards),
      pagesLoaded,
      loadingNextPage,
      hasMoreCards);

  @JsonKey(ignore: true)
  @override
  $CardsModelInitializedCopyWith<CardsModelInitialized> get copyWith =>
      _$CardsModelInitializedCopyWithImpl<CardsModelInitialized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInitial,
    required TResult Function(List<CardInitialized> cards, int pagesLoaded,
            bool loadingNextPage, bool hasMoreCards)
        initialized,
  }) {
    return initialized(cards, pagesLoaded, loadingNextPage, hasMoreCards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(List<CardInitialized> cards, int pagesLoaded,
            bool loadingNextPage, bool hasMoreCards)?
        initialized,
  }) {
    return initialized?.call(cards, pagesLoaded, loadingNextPage, hasMoreCards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(List<CardInitialized> cards, int pagesLoaded,
            bool loadingNextPage, bool hasMoreCards)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(cards, pagesLoaded, loadingNextPage, hasMoreCards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsModelInitial value) initial,
    required TResult Function(CardsModelLoadingInitial value) loadingInitial,
    required TResult Function(CardsModelInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardsModelInitial value)? initial,
    TResult Function(CardsModelLoadingInitial value)? loadingInitial,
    TResult Function(CardsModelInitialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsModelInitial value)? initial,
    TResult Function(CardsModelLoadingInitial value)? loadingInitial,
    TResult Function(CardsModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class CardsModelInitialized extends CardsModel {
  factory CardsModelInitialized(List<CardInitialized> cards, int pagesLoaded,
      bool loadingNextPage, bool hasMoreCards) = _$CardsModelInitialized;
  CardsModelInitialized._() : super._();

  List<CardInitialized> get cards;
  int get pagesLoaded;
  bool get loadingNextPage;
  bool get hasMoreCards;
  @JsonKey(ignore: true)
  $CardsModelInitializedCopyWith<CardsModelInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}
