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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(bool searchFocused)? initial,
    TResult? Function(bool searchFocused)? loading,
    TResult? Function(bool searchFocused, String resultsQuery,
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

  @JsonKey(ignore: true)
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
abstract class _$$SearchModelInitialCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$SearchModelInitialCopyWith(_$SearchModelInitial value,
          $Res Function(_$SearchModelInitial) then) =
      __$$SearchModelInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool searchFocused});
}

/// @nodoc
class __$$SearchModelInitialCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res, _$SearchModelInitial>
    implements _$$SearchModelInitialCopyWith<$Res> {
  __$$SearchModelInitialCopyWithImpl(
      _$SearchModelInitial _value, $Res Function(_$SearchModelInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchFocused = null,
  }) {
    return _then(_$SearchModelInitial(
      null == searchFocused
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
            other is _$SearchModelInitial &&
            (identical(other.searchFocused, searchFocused) ||
                other.searchFocused == searchFocused));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchFocused);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelInitialCopyWith<_$SearchModelInitial> get copyWith =>
      __$$SearchModelInitialCopyWithImpl<_$SearchModelInitial>(
          this, _$identity);

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
    TResult? Function(bool searchFocused)? initial,
    TResult? Function(bool searchFocused)? loading,
    TResult? Function(bool searchFocused, String resultsQuery,
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
  factory SearchModelInitial(final bool searchFocused) = _$SearchModelInitial;

  @override
  bool get searchFocused;
  @override
  @JsonKey(ignore: true)
  _$$SearchModelInitialCopyWith<_$SearchModelInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchModelLoadingCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$SearchModelLoadingCopyWith(_$SearchModelLoading value,
          $Res Function(_$SearchModelLoading) then) =
      __$$SearchModelLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool searchFocused});
}

/// @nodoc
class __$$SearchModelLoadingCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res, _$SearchModelLoading>
    implements _$$SearchModelLoadingCopyWith<$Res> {
  __$$SearchModelLoadingCopyWithImpl(
      _$SearchModelLoading _value, $Res Function(_$SearchModelLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchFocused = null,
  }) {
    return _then(_$SearchModelLoading(
      null == searchFocused
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
            other is _$SearchModelLoading &&
            (identical(other.searchFocused, searchFocused) ||
                other.searchFocused == searchFocused));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchFocused);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelLoadingCopyWith<_$SearchModelLoading> get copyWith =>
      __$$SearchModelLoadingCopyWithImpl<_$SearchModelLoading>(
          this, _$identity);

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
    TResult? Function(bool searchFocused)? initial,
    TResult? Function(bool searchFocused)? loading,
    TResult? Function(bool searchFocused, String resultsQuery,
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
  factory SearchModelLoading(final bool searchFocused) = _$SearchModelLoading;

  @override
  bool get searchFocused;
  @override
  @JsonKey(ignore: true)
  _$$SearchModelLoadingCopyWith<_$SearchModelLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchModelLoadedCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$SearchModelLoadedCopyWith(
          _$SearchModelLoaded value, $Res Function(_$SearchModelLoaded) then) =
      __$$SearchModelLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool searchFocused, String resultsQuery, List<CardInitialized> cards});
}

/// @nodoc
class __$$SearchModelLoadedCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res, _$SearchModelLoaded>
    implements _$$SearchModelLoadedCopyWith<$Res> {
  __$$SearchModelLoadedCopyWithImpl(
      _$SearchModelLoaded _value, $Res Function(_$SearchModelLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchFocused = null,
    Object? resultsQuery = null,
    Object? cards = null,
  }) {
    return _then(_$SearchModelLoaded(
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
    ));
  }
}

/// @nodoc

class _$SearchModelLoaded implements SearchModelLoaded {
  _$SearchModelLoaded(
      this.searchFocused, this.resultsQuery, final List<CardInitialized> cards)
      : _cards = cards;

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

  @override
  String toString() {
    return 'SearchModel.loaded(searchFocused: $searchFocused, resultsQuery: $resultsQuery, cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModelLoaded &&
            (identical(other.searchFocused, searchFocused) ||
                other.searchFocused == searchFocused) &&
            (identical(other.resultsQuery, resultsQuery) ||
                other.resultsQuery == resultsQuery) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchFocused, resultsQuery,
      const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelLoadedCopyWith<_$SearchModelLoaded> get copyWith =>
      __$$SearchModelLoadedCopyWithImpl<_$SearchModelLoaded>(this, _$identity);

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
    TResult? Function(bool searchFocused)? initial,
    TResult? Function(bool searchFocused)? loading,
    TResult? Function(bool searchFocused, String resultsQuery,
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
  factory SearchModelLoaded(final bool searchFocused, final String resultsQuery,
      final List<CardInitialized> cards) = _$SearchModelLoaded;

  @override
  bool get searchFocused;
  String get resultsQuery;
  List<CardInitialized> get cards;
  @override
  @JsonKey(ignore: true)
  _$$SearchModelLoadedCopyWith<_$SearchModelLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
