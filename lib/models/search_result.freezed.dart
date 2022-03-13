// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return SearchResultInitialized.fromJson(json);
}

/// @nodoc
class _$SearchResultTearOff {
  const _$SearchResultTearOff();

  SearchResultInitialized call(String query, List<CardInitialized> cards) {
    return SearchResultInitialized(
      query,
      cards,
    );
  }

  SearchResult fromJson(Map<String, Object?> json) {
    return SearchResult.fromJson(json);
  }
}

/// @nodoc
const $SearchResult = _$SearchResultTearOff();

/// @nodoc
mixin _$SearchResult {
  String get query => throw _privateConstructorUsedError;
  List<CardInitialized> get cards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res>;
  $Res call({String query, List<CardInitialized> cards});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res> implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  final SearchResult _value;
  // ignore: unused_field
  final $Res Function(SearchResult) _then;

  @override
  $Res call({
    Object? query = freezed,
    Object? cards = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardInitialized>,
    ));
  }
}

/// @nodoc
abstract class $SearchResultInitializedCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory $SearchResultInitializedCopyWith(SearchResultInitialized value,
          $Res Function(SearchResultInitialized) then) =
      _$SearchResultInitializedCopyWithImpl<$Res>;
  @override
  $Res call({String query, List<CardInitialized> cards});
}

/// @nodoc
class _$SearchResultInitializedCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res>
    implements $SearchResultInitializedCopyWith<$Res> {
  _$SearchResultInitializedCopyWithImpl(SearchResultInitialized _value,
      $Res Function(SearchResultInitialized) _then)
      : super(_value, (v) => _then(v as SearchResultInitialized));

  @override
  SearchResultInitialized get _value => super._value as SearchResultInitialized;

  @override
  $Res call({
    Object? query = freezed,
    Object? cards = freezed,
  }) {
    return _then(SearchResultInitialized(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardInitialized>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultInitialized implements SearchResultInitialized {
  _$SearchResultInitialized(this.query, this.cards);

  factory _$SearchResultInitialized.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultInitializedFromJson(json);

  @override
  final String query;
  @override
  final List<CardInitialized> cards;

  @override
  String toString() {
    return 'SearchResult(query: $query, cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchResultInitialized &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.cards, cards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(cards));

  @JsonKey(ignore: true)
  @override
  $SearchResultInitializedCopyWith<SearchResultInitialized> get copyWith =>
      _$SearchResultInitializedCopyWithImpl<SearchResultInitialized>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultInitializedToJson(this);
  }
}

abstract class SearchResultInitialized implements SearchResult {
  factory SearchResultInitialized(String query, List<CardInitialized> cards) =
      _$SearchResultInitialized;

  factory SearchResultInitialized.fromJson(Map<String, dynamic> json) =
      _$SearchResultInitialized.fromJson;

  @override
  String get query;
  @override
  List<CardInitialized> get cards;
  @override
  @JsonKey(ignore: true)
  $SearchResultInitializedCopyWith<SearchResultInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}
