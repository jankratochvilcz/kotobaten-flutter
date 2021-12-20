// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchModelTearOff {
  const _$SearchModelTearOff();

  SearchModelInitial initial(bool searchFocused) {
    return SearchModelInitial(
      searchFocused,
    );
  }

  SearchModelLoading loading(bool searchFocused) {
    return SearchModelLoading(
      searchFocused,
    );
  }

  SearchModelLoaded loaded(
      bool searchFocused, String resultsQuery, List<CardInitialized> cards) {
    return SearchModelLoaded(
      searchFocused,
      resultsQuery,
      cards,
    );
  }
}

/// @nodoc
const $SearchModel = _$SearchModelTearOff();

/// @nodoc
mixin _$SearchModel {
  bool get searchFocused => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool searchFocused) initial,
    required TResult Function(bool searchFocused) loading,
    required TResult Function(bool searchFocused, String resultsQuery,
            List<CardInitialized> cards)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool searchFocused)? initial,
    TResult Function(bool searchFocused)? loading,
    TResult Function(bool searchFocused, String resultsQuery,
            List<CardInitialized> cards)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool searchFocused)? initial,
    TResult Function(bool searchFocused)? loading,
    TResult Function(bool searchFocused, String resultsQuery,
            List<CardInitialized> cards)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchModelInitial value) initial,
    required TResult Function(SearchModelLoading value) loading,
    required TResult Function(SearchModelLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchModelInitial value)? initial,
    TResult Function(SearchModelLoading value)? loading,
    TResult Function(SearchModelLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchModelInitial value)? initial,
    TResult Function(SearchModelLoading value)? loading,
    TResult Function(SearchModelLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res>;
  $Res call({bool searchFocused});
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res> implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  final SearchModel _value;
  // ignore: unused_field
  final $Res Function(SearchModel) _then;

  @override
  $Res call({
    Object? searchFocused = freezed,
  }) {
    return _then(_value.copyWith(
      searchFocused: searchFocused == freezed
          ? _value.searchFocused
          : searchFocused // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $SearchModelInitialCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory $SearchModelInitialCopyWith(
          SearchModelInitial value, $Res Function(SearchModelInitial) then) =
      _$SearchModelInitialCopyWithImpl<$Res>;
  @override
  $Res call({bool searchFocused});
}

/// @nodoc
class _$SearchModelInitialCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res>
    implements $SearchModelInitialCopyWith<$Res> {
  _$SearchModelInitialCopyWithImpl(
      SearchModelInitial _value, $Res Function(SearchModelInitial) _then)
      : super(_value, (v) => _then(v as SearchModelInitial));

  @override
  SearchModelInitial get _value => super._value as SearchModelInitial;

  @override
  $Res call({
    Object? searchFocused = freezed,
  }) {
    return _then(SearchModelInitial(
      searchFocused == freezed
          ? _value.searchFocused
          : searchFocused // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchModelInitial implements SearchModelInitial {
  _$SearchModelInitial(this.searchFocused);

  @override
  final bool searchFocused;

  @override
  String toString() {
    return 'SearchModel.initial(searchFocused: $searchFocused)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchModelInitial &&
            (identical(other.searchFocused, searchFocused) ||
                other.searchFocused == searchFocused));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchFocused);

  @JsonKey(ignore: true)
  @override
  $SearchModelInitialCopyWith<SearchModelInitial> get copyWith =>
      _$SearchModelInitialCopyWithImpl<SearchModelInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool searchFocused) initial,
    required TResult Function(bool searchFocused) loading,
    required TResult Function(bool searchFocused, String resultsQuery,
            List<CardInitialized> cards)
        loaded,
  }) {
    return initial(searchFocused);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool searchFocused)? initial,
    TResult Function(bool searchFocused)? loading,
    TResult Function(bool searchFocused, String resultsQuery,
            List<CardInitialized> cards)?
        loaded,
  }) {
    return initial?.call(searchFocused);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool searchFocused)? initial,
    TResult Function(bool searchFocused)? loading,
    TResult Function(bool searchFocused, String resultsQuery,
            List<CardInitialized> cards)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(searchFocused);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchModelInitial value) initial,
    required TResult Function(SearchModelLoading value) loading,
    required TResult Function(SearchModelLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchModelInitial value)? initial,
    TResult Function(SearchModelLoading value)? loading,
    TResult Function(SearchModelLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchModelInitial value)? initial,
    TResult Function(SearchModelLoading value)? loading,
    TResult Function(SearchModelLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchModelInitial implements SearchModel {
  factory SearchModelInitial(bool searchFocused) = _$SearchModelInitial;

  @override
  bool get searchFocused;
  @override
  @JsonKey(ignore: true)
  $SearchModelInitialCopyWith<SearchModelInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelLoadingCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory $SearchModelLoadingCopyWith(
          SearchModelLoading value, $Res Function(SearchModelLoading) then) =
      _$SearchModelLoadingCopyWithImpl<$Res>;
  @override
  $Res call({bool searchFocused});
}

/// @nodoc
class _$SearchModelLoadingCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res>
    implements $SearchModelLoadingCopyWith<$Res> {
  _$SearchModelLoadingCopyWithImpl(
      SearchModelLoading _value, $Res Function(SearchModelLoading) _then)
      : super(_value, (v) => _then(v as SearchModelLoading));

  @override
  SearchModelLoading get _value => super._value as SearchModelLoading;

  @override
  $Res call({
    Object? searchFocused = freezed,
  }) {
    return _then(SearchModelLoading(
      searchFocused == freezed
          ? _value.searchFocused
          : searchFocused // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchModelLoading implements SearchModelLoading {
  _$SearchModelLoading(this.searchFocused);

  @override
  final bool searchFocused;

  @override
  String toString() {
    return 'SearchModel.loading(searchFocused: $searchFocused)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchModelLoading &&
            (identical(other.searchFocused, searchFocused) ||
                other.searchFocused == searchFocused));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchFocused);

  @JsonKey(ignore: true)
  @override
  $SearchModelLoadingCopyWith<SearchModelLoading> get copyWith =>
      _$SearchModelLoadingCopyWithImpl<SearchModelLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool searchFocused) initial,
    required TResult Function(bool searchFocused) loading,
    required TResult Function(bool searchFocused, String resultsQuery,
            List<CardInitialized> cards)
        loaded,
  }) {
    return loading(searchFocused);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool searchFocused)? initial,
    TResult Function(bool searchFocused)? loading,
    TResult Function(bool searchFocused, String resultsQuery,
            List<CardInitialized> cards)?
        loaded,
  }) {
    return loading?.call(searchFocused);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool searchFocused)? initial,
    TResult Function(bool searchFocused)? loading,
    TResult Function(bool searchFocused, String resultsQuery,
            List<CardInitialized> cards)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(searchFocused);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchModelInitial value) initial,
    required TResult Function(SearchModelLoading value) loading,
    required TResult Function(SearchModelLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchModelInitial value)? initial,
    TResult Function(SearchModelLoading value)? loading,
    TResult Function(SearchModelLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchModelInitial value)? initial,
    TResult Function(SearchModelLoading value)? loading,
    TResult Function(SearchModelLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchModelLoading implements SearchModel {
  factory SearchModelLoading(bool searchFocused) = _$SearchModelLoading;

  @override
  bool get searchFocused;
  @override
  @JsonKey(ignore: true)
  $SearchModelLoadingCopyWith<SearchModelLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelLoadedCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory $SearchModelLoadedCopyWith(
          SearchModelLoaded value, $Res Function(SearchModelLoaded) then) =
      _$SearchModelLoadedCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool searchFocused, String resultsQuery, List<CardInitialized> cards});
}

/// @nodoc
class _$SearchModelLoadedCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res>
    implements $SearchModelLoadedCopyWith<$Res> {
  _$SearchModelLoadedCopyWithImpl(
      SearchModelLoaded _value, $Res Function(SearchModelLoaded) _then)
      : super(_value, (v) => _then(v as SearchModelLoaded));

  @override
  SearchModelLoaded get _value => super._value as SearchModelLoaded;

  @override
  $Res call({
    Object? searchFocused = freezed,
    Object? resultsQuery = freezed,
    Object? cards = freezed,
  }) {
    return _then(SearchModelLoaded(
      searchFocused == freezed
          ? _value.searchFocused
          : searchFocused // ignore: cast_nullable_to_non_nullable
              as bool,
      resultsQuery == freezed
          ? _value.resultsQuery
          : resultsQuery // ignore: cast_nullable_to_non_nullable
              as String,
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardInitialized>,
    ));
  }
}

/// @nodoc

class _$SearchModelLoaded implements SearchModelLoaded {
  _$SearchModelLoaded(this.searchFocused, this.resultsQuery, this.cards);

  @override
  final bool searchFocused;
  @override
  final String resultsQuery;
  @override
  final List<CardInitialized> cards;

  @override
  String toString() {
    return 'SearchModel.loaded(searchFocused: $searchFocused, resultsQuery: $resultsQuery, cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchModelLoaded &&
            (identical(other.searchFocused, searchFocused) ||
                other.searchFocused == searchFocused) &&
            (identical(other.resultsQuery, resultsQuery) ||
                other.resultsQuery == resultsQuery) &&
            const DeepCollectionEquality().equals(other.cards, cards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchFocused, resultsQuery,
      const DeepCollectionEquality().hash(cards));

  @JsonKey(ignore: true)
  @override
  $SearchModelLoadedCopyWith<SearchModelLoaded> get copyWith =>
      _$SearchModelLoadedCopyWithImpl<SearchModelLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool searchFocused) initial,
    required TResult Function(bool searchFocused) loading,
    required TResult Function(bool searchFocused, String resultsQuery,
            List<CardInitialized> cards)
        loaded,
  }) {
    return loaded(searchFocused, resultsQuery, cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool searchFocused)? initial,
    TResult Function(bool searchFocused)? loading,
    TResult Function(bool searchFocused, String resultsQuery,
            List<CardInitialized> cards)?
        loaded,
  }) {
    return loaded?.call(searchFocused, resultsQuery, cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool searchFocused)? initial,
    TResult Function(bool searchFocused)? loading,
    TResult Function(bool searchFocused, String resultsQuery,
            List<CardInitialized> cards)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(searchFocused, resultsQuery, cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchModelInitial value) initial,
    required TResult Function(SearchModelLoading value) loading,
    required TResult Function(SearchModelLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchModelInitial value)? initial,
    TResult Function(SearchModelLoading value)? loading,
    TResult Function(SearchModelLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchModelInitial value)? initial,
    TResult Function(SearchModelLoading value)? loading,
    TResult Function(SearchModelLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SearchModelLoaded implements SearchModel {
  factory SearchModelLoaded(bool searchFocused, String resultsQuery,
      List<CardInitialized> cards) = _$SearchModelLoaded;

  @override
  bool get searchFocused;
  String get resultsQuery;
  List<CardInitialized> get cards;
  @override
  @JsonKey(ignore: true)
  $SearchModelLoadedCopyWith<SearchModelLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
