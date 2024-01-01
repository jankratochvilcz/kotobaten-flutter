// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DictionaryCard _$DictionaryCardFromJson(Map<String, dynamic> json) {
  return DictionaryCardInitialized.fromJson(json);
}

/// @nodoc
mixin _$DictionaryCard {
  String get kanji => throw _privateConstructorUsedError;
  String get kana => throw _privateConstructorUsedError;
  List<List<String>> get senses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionaryCardCopyWith<DictionaryCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryCardCopyWith<$Res> {
  factory $DictionaryCardCopyWith(
          DictionaryCard value, $Res Function(DictionaryCard) then) =
      _$DictionaryCardCopyWithImpl<$Res, DictionaryCard>;
  @useResult
  $Res call({String kanji, String kana, List<List<String>> senses});
}

/// @nodoc
class _$DictionaryCardCopyWithImpl<$Res, $Val extends DictionaryCard>
    implements $DictionaryCardCopyWith<$Res> {
  _$DictionaryCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kanji = null,
    Object? kana = null,
    Object? senses = null,
  }) {
    return _then(_value.copyWith(
      kanji: null == kanji
          ? _value.kanji
          : kanji // ignore: cast_nullable_to_non_nullable
              as String,
      kana: null == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String,
      senses: null == senses
          ? _value.senses
          : senses // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DictionaryCardInitializedImplCopyWith<$Res>
    implements $DictionaryCardCopyWith<$Res> {
  factory _$$DictionaryCardInitializedImplCopyWith(
          _$DictionaryCardInitializedImpl value,
          $Res Function(_$DictionaryCardInitializedImpl) then) =
      __$$DictionaryCardInitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kanji, String kana, List<List<String>> senses});
}

/// @nodoc
class __$$DictionaryCardInitializedImplCopyWithImpl<$Res>
    extends _$DictionaryCardCopyWithImpl<$Res, _$DictionaryCardInitializedImpl>
    implements _$$DictionaryCardInitializedImplCopyWith<$Res> {
  __$$DictionaryCardInitializedImplCopyWithImpl(
      _$DictionaryCardInitializedImpl _value,
      $Res Function(_$DictionaryCardInitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kanji = null,
    Object? kana = null,
    Object? senses = null,
  }) {
    return _then(_$DictionaryCardInitializedImpl(
      null == kanji
          ? _value.kanji
          : kanji // ignore: cast_nullable_to_non_nullable
              as String,
      null == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String,
      null == senses
          ? _value._senses
          : senses // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DictionaryCardInitializedImpl implements DictionaryCardInitialized {
  _$DictionaryCardInitializedImpl(
      this.kanji, this.kana, final List<List<String>> senses)
      : _senses = senses;

  factory _$DictionaryCardInitializedImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryCardInitializedImplFromJson(json);

  @override
  final String kanji;
  @override
  final String kana;
  final List<List<String>> _senses;
  @override
  List<List<String>> get senses {
    if (_senses is EqualUnmodifiableListView) return _senses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_senses);
  }

  @override
  String toString() {
    return 'DictionaryCard(kanji: $kanji, kana: $kana, senses: $senses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryCardInitializedImpl &&
            (identical(other.kanji, kanji) || other.kanji == kanji) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            const DeepCollectionEquality().equals(other._senses, _senses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, kanji, kana, const DeepCollectionEquality().hash(_senses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryCardInitializedImplCopyWith<_$DictionaryCardInitializedImpl>
      get copyWith => __$$DictionaryCardInitializedImplCopyWithImpl<
          _$DictionaryCardInitializedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryCardInitializedImplToJson(
      this,
    );
  }
}

abstract class DictionaryCardInitialized implements DictionaryCard {
  factory DictionaryCardInitialized(final String kanji, final String kana,
      final List<List<String>> senses) = _$DictionaryCardInitializedImpl;

  factory DictionaryCardInitialized.fromJson(Map<String, dynamic> json) =
      _$DictionaryCardInitializedImpl.fromJson;

  @override
  String get kanji;
  @override
  String get kana;
  @override
  List<List<String>> get senses;
  @override
  @JsonKey(ignore: true)
  _$$DictionaryCardInitializedImplCopyWith<_$DictionaryCardInitializedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
