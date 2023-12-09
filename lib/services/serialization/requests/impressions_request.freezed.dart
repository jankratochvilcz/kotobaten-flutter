// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'impressions_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImpressionsRequest _$ImpressionsRequestFromJson(Map<String, dynamic> json) {
  return Initialized.fromJson(json);
}

/// @nodoc
mixin _$ImpressionsRequest {
  ImpressionType get impressionType => throw _privateConstructorUsedError;
  int? get stackCardId => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImpressionType impressionType, int? stackCardId,
            bool success, DateTime timestamp)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImpressionType impressionType, int? stackCardId,
            bool success, DateTime timestamp)?
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImpressionType impressionType, int? stackCardId,
            bool success, DateTime timestamp)?
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
  $ImpressionsRequestCopyWith<ImpressionsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImpressionsRequestCopyWith<$Res> {
  factory $ImpressionsRequestCopyWith(
          ImpressionsRequest value, $Res Function(ImpressionsRequest) then) =
      _$ImpressionsRequestCopyWithImpl<$Res, ImpressionsRequest>;
  @useResult
  $Res call(
      {ImpressionType impressionType,
      int? stackCardId,
      bool success,
      DateTime timestamp});
}

/// @nodoc
class _$ImpressionsRequestCopyWithImpl<$Res, $Val extends ImpressionsRequest>
    implements $ImpressionsRequestCopyWith<$Res> {
  _$ImpressionsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? impressionType = null,
    Object? stackCardId = freezed,
    Object? success = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      impressionType: null == impressionType
          ? _value.impressionType
          : impressionType // ignore: cast_nullable_to_non_nullable
              as ImpressionType,
      stackCardId: freezed == stackCardId
          ? _value.stackCardId
          : stackCardId // ignore: cast_nullable_to_non_nullable
              as int?,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res>
    implements $ImpressionsRequestCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ImpressionType impressionType,
      int? stackCardId,
      bool success,
      DateTime timestamp});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ImpressionsRequestCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? impressionType = null,
    Object? stackCardId = freezed,
    Object? success = null,
    Object? timestamp = null,
  }) {
    return _then(_$InitializedImpl(
      null == impressionType
          ? _value.impressionType
          : impressionType // ignore: cast_nullable_to_non_nullable
              as ImpressionType,
      freezed == stackCardId
          ? _value.stackCardId
          : stackCardId // ignore: cast_nullable_to_non_nullable
              as int?,
      null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitializedImpl implements Initialized {
  _$InitializedImpl(
      this.impressionType, this.stackCardId, this.success, this.timestamp);

  factory _$InitializedImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitializedImplFromJson(json);

  @override
  final ImpressionType impressionType;
  @override
  final int? stackCardId;
  @override
  final bool success;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'ImpressionsRequest.initialized(impressionType: $impressionType, stackCardId: $stackCardId, success: $success, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.impressionType, impressionType) ||
                other.impressionType == impressionType) &&
            (identical(other.stackCardId, stackCardId) ||
                other.stackCardId == stackCardId) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, impressionType, stackCardId, success, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImpressionType impressionType, int? stackCardId,
            bool success, DateTime timestamp)
        initialized,
  }) {
    return initialized(impressionType, stackCardId, success, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImpressionType impressionType, int? stackCardId,
            bool success, DateTime timestamp)?
        initialized,
  }) {
    return initialized?.call(impressionType, stackCardId, success, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImpressionType impressionType, int? stackCardId,
            bool success, DateTime timestamp)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(impressionType, stackCardId, success, timestamp);
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

abstract class Initialized implements ImpressionsRequest {
  factory Initialized(
      final ImpressionType impressionType,
      final int? stackCardId,
      final bool success,
      final DateTime timestamp) = _$InitializedImpl;

  factory Initialized.fromJson(Map<String, dynamic> json) =
      _$InitializedImpl.fromJson;

  @override
  ImpressionType get impressionType;
  @override
  int? get stackCardId;
  @override
  bool get success;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
