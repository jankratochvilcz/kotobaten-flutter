// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'impressions_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImpressionsRequest _$ImpressionsRequestFromJson(Map<String, dynamic> json) {
  return Initialized.fromJson(json);
}

/// @nodoc
class _$ImpressionsRequestTearOff {
  const _$ImpressionsRequestTearOff();

  Initialized initialized(ImpressionType impressionType, int stackCardId,
      bool success, DateTime timestamp) {
    return Initialized(
      impressionType,
      stackCardId,
      success,
      timestamp,
    );
  }

  ImpressionsRequest fromJson(Map<String, Object?> json) {
    return ImpressionsRequest.fromJson(json);
  }
}

/// @nodoc
const $ImpressionsRequest = _$ImpressionsRequestTearOff();

/// @nodoc
mixin _$ImpressionsRequest {
  ImpressionType get impressionType => throw _privateConstructorUsedError;
  int get stackCardId => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImpressionType impressionType, int stackCardId,
            bool success, DateTime timestamp)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ImpressionType impressionType, int stackCardId,
            bool success, DateTime timestamp)?
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImpressionType impressionType, int stackCardId,
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
    TResult Function(Initialized value)? initialized,
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
      _$ImpressionsRequestCopyWithImpl<$Res>;
  $Res call(
      {ImpressionType impressionType,
      int stackCardId,
      bool success,
      DateTime timestamp});
}

/// @nodoc
class _$ImpressionsRequestCopyWithImpl<$Res>
    implements $ImpressionsRequestCopyWith<$Res> {
  _$ImpressionsRequestCopyWithImpl(this._value, this._then);

  final ImpressionsRequest _value;
  // ignore: unused_field
  final $Res Function(ImpressionsRequest) _then;

  @override
  $Res call({
    Object? impressionType = freezed,
    Object? stackCardId = freezed,
    Object? success = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      impressionType: impressionType == freezed
          ? _value.impressionType
          : impressionType // ignore: cast_nullable_to_non_nullable
              as ImpressionType,
      stackCardId: stackCardId == freezed
          ? _value.stackCardId
          : stackCardId // ignore: cast_nullable_to_non_nullable
              as int,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class $InitializedCopyWith<$Res>
    implements $ImpressionsRequestCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  @override
  $Res call(
      {ImpressionType impressionType,
      int stackCardId,
      bool success,
      DateTime timestamp});
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$ImpressionsRequestCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object? impressionType = freezed,
    Object? stackCardId = freezed,
    Object? success = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(Initialized(
      impressionType == freezed
          ? _value.impressionType
          : impressionType // ignore: cast_nullable_to_non_nullable
              as ImpressionType,
      stackCardId == freezed
          ? _value.stackCardId
          : stackCardId // ignore: cast_nullable_to_non_nullable
              as int,
      success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Initialized implements Initialized {
  _$Initialized(
      this.impressionType, this.stackCardId, this.success, this.timestamp);

  factory _$Initialized.fromJson(Map<String, dynamic> json) =>
      _$$InitializedFromJson(json);

  @override
  final ImpressionType impressionType;
  @override
  final int stackCardId;
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
            other is Initialized &&
            (identical(other.impressionType, impressionType) ||
                other.impressionType == impressionType) &&
            (identical(other.stackCardId, stackCardId) ||
                other.stackCardId == stackCardId) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, impressionType, stackCardId, success, timestamp);

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImpressionType impressionType, int stackCardId,
            bool success, DateTime timestamp)
        initialized,
  }) {
    return initialized(impressionType, stackCardId, success, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ImpressionType impressionType, int stackCardId,
            bool success, DateTime timestamp)?
        initialized,
  }) {
    return initialized?.call(impressionType, stackCardId, success, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImpressionType impressionType, int stackCardId,
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
    TResult Function(Initialized value)? initialized,
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
    return _$$InitializedToJson(this);
  }
}

abstract class Initialized implements ImpressionsRequest {
  factory Initialized(ImpressionType impressionType, int stackCardId,
      bool success, DateTime timestamp) = _$Initialized;

  factory Initialized.fromJson(Map<String, dynamic> json) =
      _$Initialized.fromJson;

  @override
  ImpressionType get impressionType;
  @override
  int get stackCardId;
  @override
  bool get success;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  $InitializedCopyWith<Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}
