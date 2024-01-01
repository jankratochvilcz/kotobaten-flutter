// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return SearchResultInitialized.fromJson(json);
}

/// @nodoc
mixin _$SearchResult {
  String get query => throw _privateConstructorUsedError;
  List<CardInitialized> get cards => throw _privateConstructorUsedError;
  List<DictionaryCardInitialized> get dictionaryCards =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
  @useResult
  $Res call(
      {String query,
      List<CardInitialized> cards,
      List<DictionaryCardInitialized> dictionaryCards});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? cards = null,
    Object? dictionaryCards = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardInitialized>,
      dictionaryCards: null == dictionaryCards
          ? _value.dictionaryCards
          : dictionaryCards // ignore: cast_nullable_to_non_nullable
              as List<DictionaryCardInitialized>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultInitializedImplCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$SearchResultInitializedImplCopyWith(
          _$SearchResultInitializedImpl value,
          $Res Function(_$SearchResultInitializedImpl) then) =
      __$$SearchResultInitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      List<CardInitialized> cards,
      List<DictionaryCardInitialized> dictionaryCards});
}

/// @nodoc
class __$$SearchResultInitializedImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SearchResultInitializedImpl>
    implements _$$SearchResultInitializedImplCopyWith<$Res> {
  __$$SearchResultInitializedImplCopyWithImpl(
      _$SearchResultInitializedImpl _value,
      $Res Function(_$SearchResultInitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? cards = null,
    Object? dictionaryCards = null,
  }) {
    return _then(_$SearchResultInitializedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$SearchResultInitializedImpl implements SearchResultInitialized {
  _$SearchResultInitializedImpl(this.query, final List<CardInitialized> cards,
      final List<DictionaryCardInitialized> dictionaryCards)
      : _cards = cards,
        _dictionaryCards = dictionaryCards;

  factory _$SearchResultInitializedImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultInitializedImplFromJson(json);

  @override
  final String query;
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
    return 'SearchResult(query: $query, cards: $cards, dictionaryCards: $dictionaryCards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultInitializedImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            const DeepCollectionEquality()
                .equals(other._dictionaryCards, _dictionaryCards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      const DeepCollectionEquality().hash(_cards),
      const DeepCollectionEquality().hash(_dictionaryCards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultInitializedImplCopyWith<_$SearchResultInitializedImpl>
      get copyWith => __$$SearchResultInitializedImplCopyWithImpl<
          _$SearchResultInitializedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultInitializedImplToJson(
      this,
    );
  }
}

abstract class SearchResultInitialized implements SearchResult {
  factory SearchResultInitialized(
          final String query,
          final List<CardInitialized> cards,
          final List<DictionaryCardInitialized> dictionaryCards) =
      _$SearchResultInitializedImpl;

  factory SearchResultInitialized.fromJson(Map<String, dynamic> json) =
      _$SearchResultInitializedImpl.fromJson;

  @override
  String get query;
  @override
  List<CardInitialized> get cards;
  @override
  List<DictionaryCardInitialized> get dictionaryCards;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultInitializedImplCopyWith<_$SearchResultInitializedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
