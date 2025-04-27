// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchModel {
  bool get searchFocused => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool searchFocused) initial,
    required TResult Function(
            bool searchFocused, SearchModelLoaded? previousResults)
        loading,
    required TResult Function(
            bool searchFocused,
            String resultsQuery,
            List<CardInitialized> cards,
            List<DictionaryCardInitialized> dictionaryCards)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool searchFocused)? initial,
    TResult? Function(bool searchFocused, SearchModelLoaded? previousResults)?
        loading,
    TResult? Function(
            bool searchFocused,
            String resultsQuery,
            List<CardInitialized> cards,
            List<DictionaryCardInitialized> dictionaryCards)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool searchFocused)? initial,
    TResult Function(bool searchFocused, SearchModelLoaded? previousResults)?
        loading,
    TResult Function(
            bool searchFocused,
            String resultsQuery,
            List<CardInitialized> cards,
            List<DictionaryCardInitialized> dictionaryCards)?
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
    TResult? Function(SearchModelInitial value)? initial,
    TResult? Function(SearchModelLoading value)? loading,
    TResult? Function(SearchModelLoaded value)? loaded,
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

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res, SearchModel>;
  @useResult
  $Res call({bool searchFocused});
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res, $Val extends SearchModel>
    implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchFocused = null,
  }) {
    return _then(_value.copyWith(
      searchFocused: null == searchFocused
          ? _value.searchFocused
          : searchFocused // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchModelInitialImplCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$SearchModelInitialImplCopyWith(_$SearchModelInitialImpl value,
          $Res Function(_$SearchModelInitialImpl) then) =
      __$$SearchModelInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool searchFocused});
}

/// @nodoc
class __$$SearchModelInitialImplCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res, _$SearchModelInitialImpl>
    implements _$$SearchModelInitialImplCopyWith<$Res> {
  __$$SearchModelInitialImplCopyWithImpl(_$SearchModelInitialImpl _value,
      $Res Function(_$SearchModelInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchFocused = null,
  }) {
    return _then(_$SearchModelInitialImpl(
      null == searchFocused
          ? _value.searchFocused
          : searchFocused // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchModelInitialImpl implements SearchModelInitial {
  _$SearchModelInitialImpl(this.searchFocused);

  @override
  final bool searchFocused;

  @override
  String toString() {
    return 'SearchModel.initial(searchFocused: $searchFocused)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModelInitialImpl &&
            (identical(other.searchFocused, searchFocused) ||
                other.searchFocused == searchFocused));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchFocused);

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelInitialImplCopyWith<_$SearchModelInitialImpl> get copyWith =>
      __$$SearchModelInitialImplCopyWithImpl<_$SearchModelInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool searchFocused) initial,
    required TResult Function(
            bool searchFocused, SearchModelLoaded? previousResults)
        loading,
    required TResult Function(
            bool searchFocused,
            String resultsQuery,
            List<CardInitialized> cards,
            List<DictionaryCardInitialized> dictionaryCards)
        loaded,
  }) {
    return initial(searchFocused);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool searchFocused)? initial,
    TResult? Function(bool searchFocused, SearchModelLoaded? previousResults)?
        loading,
    TResult? Function(
            bool searchFocused,
            String resultsQuery,
            List<CardInitialized> cards,
            List<DictionaryCardInitialized> dictionaryCards)?
        loaded,
  }) {
    return initial?.call(searchFocused);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool searchFocused)? initial,
    TResult Function(bool searchFocused, SearchModelLoaded? previousResults)?
        loading,
    TResult Function(
            bool searchFocused,
            String resultsQuery,
            List<CardInitialized> cards,
            List<DictionaryCardInitialized> dictionaryCards)?
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
    TResult? Function(SearchModelInitial value)? initial,
    TResult? Function(SearchModelLoading value)? loading,
    TResult? Function(SearchModelLoaded value)? loaded,
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
  factory SearchModelInitial(final bool searchFocused) =
      _$SearchModelInitialImpl;

  @override
  bool get searchFocused;

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchModelInitialImplCopyWith<_$SearchModelInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchModelLoadingImplCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$SearchModelLoadingImplCopyWith(_$SearchModelLoadingImpl value,
          $Res Function(_$SearchModelLoadingImpl) then) =
      __$$SearchModelLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool searchFocused, SearchModelLoaded? previousResults});
}

/// @nodoc
class __$$SearchModelLoadingImplCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res, _$SearchModelLoadingImpl>
    implements _$$SearchModelLoadingImplCopyWith<$Res> {
  __$$SearchModelLoadingImplCopyWithImpl(_$SearchModelLoadingImpl _value,
      $Res Function(_$SearchModelLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchFocused = null,
    Object? previousResults = freezed,
  }) {
    return _then(_$SearchModelLoadingImpl(
      null == searchFocused
          ? _value.searchFocused
          : searchFocused // ignore: cast_nullable_to_non_nullable
              as bool,
      freezed == previousResults
          ? _value.previousResults
          : previousResults // ignore: cast_nullable_to_non_nullable
              as SearchModelLoaded?,
    ));
  }
}

/// @nodoc

class _$SearchModelLoadingImpl implements SearchModelLoading {
  _$SearchModelLoadingImpl(this.searchFocused, this.previousResults);

  @override
  final bool searchFocused;
  @override
  final SearchModelLoaded? previousResults;

  @override
  String toString() {
    return 'SearchModel.loading(searchFocused: $searchFocused, previousResults: $previousResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModelLoadingImpl &&
            (identical(other.searchFocused, searchFocused) ||
                other.searchFocused == searchFocused) &&
            const DeepCollectionEquality()
                .equals(other.previousResults, previousResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchFocused,
      const DeepCollectionEquality().hash(previousResults));

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelLoadingImplCopyWith<_$SearchModelLoadingImpl> get copyWith =>
      __$$SearchModelLoadingImplCopyWithImpl<_$SearchModelLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool searchFocused) initial,
    required TResult Function(
            bool searchFocused, SearchModelLoaded? previousResults)
        loading,
    required TResult Function(
            bool searchFocused,
            String resultsQuery,
            List<CardInitialized> cards,
            List<DictionaryCardInitialized> dictionaryCards)
        loaded,
  }) {
    return loading(searchFocused, previousResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool searchFocused)? initial,
    TResult? Function(bool searchFocused, SearchModelLoaded? previousResults)?
        loading,
    TResult? Function(
            bool searchFocused,
            String resultsQuery,
            List<CardInitialized> cards,
            List<DictionaryCardInitialized> dictionaryCards)?
        loaded,
  }) {
    return loading?.call(searchFocused, previousResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool searchFocused)? initial,
    TResult Function(bool searchFocused, SearchModelLoaded? previousResults)?
        loading,
    TResult Function(
            bool searchFocused,
            String resultsQuery,
            List<CardInitialized> cards,
            List<DictionaryCardInitialized> dictionaryCards)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(searchFocused, previousResults);
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
    TResult? Function(SearchModelInitial value)? initial,
    TResult? Function(SearchModelLoading value)? loading,
    TResult? Function(SearchModelLoaded value)? loaded,
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
  factory SearchModelLoading(
          final bool searchFocused, final SearchModelLoaded? previousResults) =
      _$SearchModelLoadingImpl;

  @override
  bool get searchFocused;
  SearchModelLoaded? get previousResults;

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchModelLoadingImplCopyWith<_$SearchModelLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchModelLoadedImplCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$SearchModelLoadedImplCopyWith(_$SearchModelLoadedImpl value,
          $Res Function(_$SearchModelLoadedImpl) then) =
      __$$SearchModelLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool searchFocused,
      String resultsQuery,
      List<CardInitialized> cards,
      List<DictionaryCardInitialized> dictionaryCards});
}

/// @nodoc
class __$$SearchModelLoadedImplCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res, _$SearchModelLoadedImpl>
    implements _$$SearchModelLoadedImplCopyWith<$Res> {
  __$$SearchModelLoadedImplCopyWithImpl(_$SearchModelLoadedImpl _value,
      $Res Function(_$SearchModelLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchFocused = null,
    Object? resultsQuery = null,
    Object? cards = null,
    Object? dictionaryCards = null,
  }) {
    return _then(_$SearchModelLoadedImpl(
      null == searchFocused
          ? _value.searchFocused
          : searchFocused // ignore: cast_nullable_to_non_nullable
              as bool,
      null == resultsQuery
          ? _value.resultsQuery
          : resultsQuery // ignore: cast_nullable_to_non_nullable
              as String,
      null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardInitialized>,
      null == dictionaryCards
          ? _value._dictionaryCards
          : dictionaryCards // ignore: cast_nullable_to_non_nullable
              as List<DictionaryCardInitialized>,
    ));
  }
}

/// @nodoc

class _$SearchModelLoadedImpl implements SearchModelLoaded {
  _$SearchModelLoadedImpl(
      this.searchFocused,
      this.resultsQuery,
      final List<CardInitialized> cards,
      final List<DictionaryCardInitialized> dictionaryCards)
      : _cards = cards,
        _dictionaryCards = dictionaryCards;

  @override
  final bool searchFocused;
  @override
  final String resultsQuery;
  final List<CardInitialized> _cards;
  @override
  List<CardInitialized> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  final List<DictionaryCardInitialized> _dictionaryCards;
  @override
  List<DictionaryCardInitialized> get dictionaryCards {
    if (_dictionaryCards is EqualUnmodifiableListView) return _dictionaryCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dictionaryCards);
  }

  @override
  String toString() {
    return 'SearchModel.loaded(searchFocused: $searchFocused, resultsQuery: $resultsQuery, cards: $cards, dictionaryCards: $dictionaryCards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModelLoadedImpl &&
            (identical(other.searchFocused, searchFocused) ||
                other.searchFocused == searchFocused) &&
            (identical(other.resultsQuery, resultsQuery) ||
                other.resultsQuery == resultsQuery) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            const DeepCollectionEquality()
                .equals(other._dictionaryCards, _dictionaryCards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchFocused,
      resultsQuery,
      const DeepCollectionEquality().hash(_cards),
      const DeepCollectionEquality().hash(_dictionaryCards));

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelLoadedImplCopyWith<_$SearchModelLoadedImpl> get copyWith =>
      __$$SearchModelLoadedImplCopyWithImpl<_$SearchModelLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool searchFocused) initial,
    required TResult Function(
            bool searchFocused, SearchModelLoaded? previousResults)
        loading,
    required TResult Function(
            bool searchFocused,
            String resultsQuery,
            List<CardInitialized> cards,
            List<DictionaryCardInitialized> dictionaryCards)
        loaded,
  }) {
    return loaded(searchFocused, resultsQuery, cards, dictionaryCards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool searchFocused)? initial,
    TResult? Function(bool searchFocused, SearchModelLoaded? previousResults)?
        loading,
    TResult? Function(
            bool searchFocused,
            String resultsQuery,
            List<CardInitialized> cards,
            List<DictionaryCardInitialized> dictionaryCards)?
        loaded,
  }) {
    return loaded?.call(searchFocused, resultsQuery, cards, dictionaryCards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool searchFocused)? initial,
    TResult Function(bool searchFocused, SearchModelLoaded? previousResults)?
        loading,
    TResult Function(
            bool searchFocused,
            String resultsQuery,
            List<CardInitialized> cards,
            List<DictionaryCardInitialized> dictionaryCards)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(searchFocused, resultsQuery, cards, dictionaryCards);
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
    TResult? Function(SearchModelInitial value)? initial,
    TResult? Function(SearchModelLoading value)? loading,
    TResult? Function(SearchModelLoaded value)? loaded,
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
  factory SearchModelLoaded(
          final bool searchFocused,
          final String resultsQuery,
          final List<CardInitialized> cards,
          final List<DictionaryCardInitialized> dictionaryCards) =
      _$SearchModelLoadedImpl;

  @override
  bool get searchFocused;
  String get resultsQuery;
  List<CardInitialized> get cards;
  List<DictionaryCardInitialized> get dictionaryCards;

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchModelLoadedImplCopyWith<_$SearchModelLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
