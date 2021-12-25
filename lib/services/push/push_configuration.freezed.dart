// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'push_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PushConfigurationTearOff {
  const _$PushConfigurationTearOff();

  PushConfigurationInitialized call(String connectionString, String namespace) {
    return PushConfigurationInitialized(
      connectionString,
      namespace,
    );
  }
}

/// @nodoc
const $PushConfiguration = _$PushConfigurationTearOff();

/// @nodoc
mixin _$PushConfiguration {
  String get connectionString => throw _privateConstructorUsedError;
  String get namespace => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PushConfigurationCopyWith<PushConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushConfigurationCopyWith<$Res> {
  factory $PushConfigurationCopyWith(
          PushConfiguration value, $Res Function(PushConfiguration) then) =
      _$PushConfigurationCopyWithImpl<$Res>;
  $Res call({String connectionString, String namespace});
}

/// @nodoc
class _$PushConfigurationCopyWithImpl<$Res>
    implements $PushConfigurationCopyWith<$Res> {
  _$PushConfigurationCopyWithImpl(this._value, this._then);

  final PushConfiguration _value;
  // ignore: unused_field
  final $Res Function(PushConfiguration) _then;

  @override
  $Res call({
    Object? connectionString = freezed,
    Object? namespace = freezed,
  }) {
    return _then(_value.copyWith(
      connectionString: connectionString == freezed
          ? _value.connectionString
          : connectionString // ignore: cast_nullable_to_non_nullable
              as String,
      namespace: namespace == freezed
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $PushConfigurationInitializedCopyWith<$Res>
    implements $PushConfigurationCopyWith<$Res> {
  factory $PushConfigurationInitializedCopyWith(
          PushConfigurationInitialized value,
          $Res Function(PushConfigurationInitialized) then) =
      _$PushConfigurationInitializedCopyWithImpl<$Res>;
  @override
  $Res call({String connectionString, String namespace});
}

/// @nodoc
class _$PushConfigurationInitializedCopyWithImpl<$Res>
    extends _$PushConfigurationCopyWithImpl<$Res>
    implements $PushConfigurationInitializedCopyWith<$Res> {
  _$PushConfigurationInitializedCopyWithImpl(
      PushConfigurationInitialized _value,
      $Res Function(PushConfigurationInitialized) _then)
      : super(_value, (v) => _then(v as PushConfigurationInitialized));

  @override
  PushConfigurationInitialized get _value =>
      super._value as PushConfigurationInitialized;

  @override
  $Res call({
    Object? connectionString = freezed,
    Object? namespace = freezed,
  }) {
    return _then(PushConfigurationInitialized(
      connectionString == freezed
          ? _value.connectionString
          : connectionString // ignore: cast_nullable_to_non_nullable
              as String,
      namespace == freezed
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PushConfigurationInitialized implements PushConfigurationInitialized {
  _$PushConfigurationInitialized(this.connectionString, this.namespace);

  @override
  final String connectionString;
  @override
  final String namespace;

  @override
  String toString() {
    return 'PushConfiguration(connectionString: $connectionString, namespace: $namespace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PushConfigurationInitialized &&
            (identical(other.connectionString, connectionString) ||
                other.connectionString == connectionString) &&
            (identical(other.namespace, namespace) ||
                other.namespace == namespace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectionString, namespace);

  @JsonKey(ignore: true)
  @override
  $PushConfigurationInitializedCopyWith<PushConfigurationInitialized>
      get copyWith => _$PushConfigurationInitializedCopyWithImpl<
          PushConfigurationInitialized>(this, _$identity);
}

abstract class PushConfigurationInitialized implements PushConfiguration {
  factory PushConfigurationInitialized(
          String connectionString, String namespace) =
      _$PushConfigurationInitialized;

  @override
  String get connectionString;
  @override
  String get namespace;
  @override
  @JsonKey(ignore: true)
  $PushConfigurationInitializedCopyWith<PushConfigurationInitialized>
      get copyWith => throw _privateConstructorUsedError;
}
