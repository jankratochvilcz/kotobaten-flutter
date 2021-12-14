// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'collection.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CollectionModelTearOff {
  const _$CollectionModelTearOff();

  CollectionModelInitial initial() {
    return const CollectionModelInitial();
  }

  CollectionModelInitializing initializing() {
    return const CollectionModelInitializing();
  }

  CollectionModelInitialized initialized(
      List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage) {
    return CollectionModelInitialized(
      cards,
      pagesLoaded,
      loadingNextPage,
    );
  }
}

/// @nodoc
const $CollectionModel = _$CollectionModelTearOff();

/// @nodoc
mixin _$CollectionModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function(
            List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function(
            List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage)?
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function(
            List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage)?
        initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollectionModelInitial value) initial,
    required TResult Function(CollectionModelInitializing value) initializing,
    required TResult Function(CollectionModelInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CollectionModelInitial value)? initial,
    TResult Function(CollectionModelInitializing value)? initializing,
    TResult Function(CollectionModelInitialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollectionModelInitial value)? initial,
    TResult Function(CollectionModelInitializing value)? initializing,
    TResult Function(CollectionModelInitialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionModelCopyWith<$Res> {
  factory $CollectionModelCopyWith(
          CollectionModel value, $Res Function(CollectionModel) then) =
      _$CollectionModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollectionModelCopyWithImpl<$Res>
    implements $CollectionModelCopyWith<$Res> {
  _$CollectionModelCopyWithImpl(this._value, this._then);

  final CollectionModel _value;
  // ignore: unused_field
  final $Res Function(CollectionModel) _then;
}

/// @nodoc
abstract class $CollectionModelInitialCopyWith<$Res> {
  factory $CollectionModelInitialCopyWith(CollectionModelInitial value,
          $Res Function(CollectionModelInitial) then) =
      _$CollectionModelInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollectionModelInitialCopyWithImpl<$Res>
    extends _$CollectionModelCopyWithImpl<$Res>
    implements $CollectionModelInitialCopyWith<$Res> {
  _$CollectionModelInitialCopyWithImpl(CollectionModelInitial _value,
      $Res Function(CollectionModelInitial) _then)
      : super(_value, (v) => _then(v as CollectionModelInitial));

  @override
  CollectionModelInitial get _value => super._value as CollectionModelInitial;
}

/// @nodoc

class _$CollectionModelInitial extends CollectionModelInitial
    with DiagnosticableTreeMixin {
  const _$CollectionModelInitial() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CollectionModel.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CollectionModel.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CollectionModelInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function(
            List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage)
        initialized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function(
            List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage)?
        initialized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function(
            List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage)?
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
    required TResult Function(CollectionModelInitial value) initial,
    required TResult Function(CollectionModelInitializing value) initializing,
    required TResult Function(CollectionModelInitialized value) initialized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CollectionModelInitial value)? initial,
    TResult Function(CollectionModelInitializing value)? initializing,
    TResult Function(CollectionModelInitialized value)? initialized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollectionModelInitial value)? initial,
    TResult Function(CollectionModelInitializing value)? initializing,
    TResult Function(CollectionModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CollectionModelInitial extends CollectionModel {
  const factory CollectionModelInitial() = _$CollectionModelInitial;
  const CollectionModelInitial._() : super._();
}

/// @nodoc
abstract class $CollectionModelInitializingCopyWith<$Res> {
  factory $CollectionModelInitializingCopyWith(
          CollectionModelInitializing value,
          $Res Function(CollectionModelInitializing) then) =
      _$CollectionModelInitializingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollectionModelInitializingCopyWithImpl<$Res>
    extends _$CollectionModelCopyWithImpl<$Res>
    implements $CollectionModelInitializingCopyWith<$Res> {
  _$CollectionModelInitializingCopyWithImpl(CollectionModelInitializing _value,
      $Res Function(CollectionModelInitializing) _then)
      : super(_value, (v) => _then(v as CollectionModelInitializing));

  @override
  CollectionModelInitializing get _value =>
      super._value as CollectionModelInitializing;
}

/// @nodoc

class _$CollectionModelInitializing extends CollectionModelInitializing
    with DiagnosticableTreeMixin {
  const _$CollectionModelInitializing() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CollectionModel.initializing()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CollectionModel.initializing'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CollectionModelInitializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function(
            List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage)
        initialized,
  }) {
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function(
            List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage)?
        initialized,
  }) {
    return initializing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function(
            List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage)?
        initialized,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollectionModelInitial value) initial,
    required TResult Function(CollectionModelInitializing value) initializing,
    required TResult Function(CollectionModelInitialized value) initialized,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CollectionModelInitial value)? initial,
    TResult Function(CollectionModelInitializing value)? initializing,
    TResult Function(CollectionModelInitialized value)? initialized,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollectionModelInitial value)? initial,
    TResult Function(CollectionModelInitializing value)? initializing,
    TResult Function(CollectionModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class CollectionModelInitializing extends CollectionModel {
  const factory CollectionModelInitializing() = _$CollectionModelInitializing;
  const CollectionModelInitializing._() : super._();
}

/// @nodoc
abstract class $CollectionModelInitializedCopyWith<$Res> {
  factory $CollectionModelInitializedCopyWith(CollectionModelInitialized value,
          $Res Function(CollectionModelInitialized) then) =
      _$CollectionModelInitializedCopyWithImpl<$Res>;
  $Res call(
      {List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage});
}

/// @nodoc
class _$CollectionModelInitializedCopyWithImpl<$Res>
    extends _$CollectionModelCopyWithImpl<$Res>
    implements $CollectionModelInitializedCopyWith<$Res> {
  _$CollectionModelInitializedCopyWithImpl(CollectionModelInitialized _value,
      $Res Function(CollectionModelInitialized) _then)
      : super(_value, (v) => _then(v as CollectionModelInitialized));

  @override
  CollectionModelInitialized get _value =>
      super._value as CollectionModelInitialized;

  @override
  $Res call({
    Object? cards = freezed,
    Object? pagesLoaded = freezed,
    Object? loadingNextPage = freezed,
  }) {
    return _then(CollectionModelInitialized(
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
    ));
  }
}

/// @nodoc

class _$CollectionModelInitialized extends CollectionModelInitialized
    with DiagnosticableTreeMixin {
  const _$CollectionModelInitialized(
      this.cards, this.pagesLoaded, this.loadingNextPage)
      : super._();

  @override
  final List<CardInitialized> cards;
  @override
  final int pagesLoaded;
  @override
  final bool loadingNextPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CollectionModel.initialized(cards: $cards, pagesLoaded: $pagesLoaded, loadingNextPage: $loadingNextPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CollectionModel.initialized'))
      ..add(DiagnosticsProperty('cards', cards))
      ..add(DiagnosticsProperty('pagesLoaded', pagesLoaded))
      ..add(DiagnosticsProperty('loadingNextPage', loadingNextPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CollectionModelInitialized &&
            const DeepCollectionEquality().equals(other.cards, cards) &&
            (identical(other.pagesLoaded, pagesLoaded) ||
                other.pagesLoaded == pagesLoaded) &&
            (identical(other.loadingNextPage, loadingNextPage) ||
                other.loadingNextPage == loadingNextPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(cards), pagesLoaded, loadingNextPage);

  @JsonKey(ignore: true)
  @override
  $CollectionModelInitializedCopyWith<CollectionModelInitialized>
      get copyWith =>
          _$CollectionModelInitializedCopyWithImpl<CollectionModelInitialized>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function(
            List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage)
        initialized,
  }) {
    return initialized(cards, pagesLoaded, loadingNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function(
            List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage)?
        initialized,
  }) {
    return initialized?.call(cards, pagesLoaded, loadingNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function(
            List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(cards, pagesLoaded, loadingNextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollectionModelInitial value) initial,
    required TResult Function(CollectionModelInitializing value) initializing,
    required TResult Function(CollectionModelInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CollectionModelInitial value)? initial,
    TResult Function(CollectionModelInitializing value)? initializing,
    TResult Function(CollectionModelInitialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollectionModelInitial value)? initial,
    TResult Function(CollectionModelInitializing value)? initializing,
    TResult Function(CollectionModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class CollectionModelInitialized extends CollectionModel {
  const factory CollectionModelInitialized(
          List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage) =
      _$CollectionModelInitialized;
  const CollectionModelInitialized._() : super._();

  List<CardInitialized> get cards;
  int get pagesLoaded;
  bool get loadingNextPage;
  @JsonKey(ignore: true)
  $CollectionModelInitializedCopyWith<CollectionModelInitialized>
      get copyWith => throw _privateConstructorUsedError;
}
