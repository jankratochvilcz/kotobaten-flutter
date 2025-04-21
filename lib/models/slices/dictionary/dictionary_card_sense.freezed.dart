// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_card_sense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DictionaryCardSense _$DictionaryCardSenseFromJson(Map<String, dynamic> json) {
  return DictionaryCardSenseInitialized.fromJson(json);
}

/// @nodoc
mixin _$DictionaryCardSense {
  List<String> get senses => throw _privateConstructorUsedError;
  List<String> get partsOfSpeech => throw _privateConstructorUsedError;

  /// Serializes this DictionaryCardSense to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryCardSense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryCardSenseCopyWith<DictionaryCardSense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryCardSenseCopyWith<$Res> {
  factory $DictionaryCardSenseCopyWith(
          DictionaryCardSense value, $Res Function(DictionaryCardSense) then) =
      _$DictionaryCardSenseCopyWithImpl<$Res, DictionaryCardSense>;
  @useResult
  $Res call({List<String> senses, List<String> partsOfSpeech});
}

/// @nodoc
class _$DictionaryCardSenseCopyWithImpl<$Res, $Val extends DictionaryCardSense>
    implements $DictionaryCardSenseCopyWith<$Res> {
  _$DictionaryCardSenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryCardSense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senses = null,
    Object? partsOfSpeech = null,
  }) {
    return _then(_value.copyWith(
      senses: null == senses
          ? _value.senses
          : senses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      partsOfSpeech: null == partsOfSpeech
          ? _value.partsOfSpeech
          : partsOfSpeech // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DictionaryCardSenseInitializedImplCopyWith<$Res>
    implements $DictionaryCardSenseCopyWith<$Res> {
  factory _$$DictionaryCardSenseInitializedImplCopyWith(
          _$DictionaryCardSenseInitializedImpl value,
          $Res Function(_$DictionaryCardSenseInitializedImpl) then) =
      __$$DictionaryCardSenseInitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> senses, List<String> partsOfSpeech});
}

/// @nodoc
class __$$DictionaryCardSenseInitializedImplCopyWithImpl<$Res>
    extends _$DictionaryCardSenseCopyWithImpl<$Res,
        _$DictionaryCardSenseInitializedImpl>
    implements _$$DictionaryCardSenseInitializedImplCopyWith<$Res> {
  __$$DictionaryCardSenseInitializedImplCopyWithImpl(
      _$DictionaryCardSenseInitializedImpl _value,
      $Res Function(_$DictionaryCardSenseInitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryCardSense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senses = null,
    Object? partsOfSpeech = null,
  }) {
    return _then(_$DictionaryCardSenseInitializedImpl(
      null == senses
          ? _value._senses
          : senses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == partsOfSpeech
          ? _value._partsOfSpeech
          : partsOfSpeech // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DictionaryCardSenseInitializedImpl
    implements DictionaryCardSenseInitialized {
  _$DictionaryCardSenseInitializedImpl(
      final List<String> senses, final List<String> partsOfSpeech)
      : _senses = senses,
        _partsOfSpeech = partsOfSpeech;

  factory _$DictionaryCardSenseInitializedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DictionaryCardSenseInitializedImplFromJson(json);

  final List<String> _senses;
  @override
  List<String> get senses {
    if (_senses is EqualUnmodifiableListView) return _senses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_senses);
  }

  final List<String> _partsOfSpeech;
  @override
  List<String> get partsOfSpeech {
    if (_partsOfSpeech is EqualUnmodifiableListView) return _partsOfSpeech;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partsOfSpeech);
  }

  @override
  String toString() {
    return 'DictionaryCardSense(senses: $senses, partsOfSpeech: $partsOfSpeech)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryCardSenseInitializedImpl &&
            const DeepCollectionEquality().equals(other._senses, _senses) &&
            const DeepCollectionEquality()
                .equals(other._partsOfSpeech, _partsOfSpeech));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_senses),
      const DeepCollectionEquality().hash(_partsOfSpeech));

  /// Create a copy of DictionaryCardSense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryCardSenseInitializedImplCopyWith<
          _$DictionaryCardSenseInitializedImpl>
      get copyWith => __$$DictionaryCardSenseInitializedImplCopyWithImpl<
          _$DictionaryCardSenseInitializedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryCardSenseInitializedImplToJson(
      this,
    );
  }
}

abstract class DictionaryCardSenseInitialized implements DictionaryCardSense {
  factory DictionaryCardSenseInitialized(
          final List<String> senses, final List<String> partsOfSpeech) =
      _$DictionaryCardSenseInitializedImpl;

  factory DictionaryCardSenseInitialized.fromJson(Map<String, dynamic> json) =
      _$DictionaryCardSenseInitializedImpl.fromJson;

  @override
  List<String> get senses;
  @override
  List<String> get partsOfSpeech;

  /// Create a copy of DictionaryCardSense
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryCardSenseInitializedImplCopyWith<
          _$DictionaryCardSenseInitializedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
