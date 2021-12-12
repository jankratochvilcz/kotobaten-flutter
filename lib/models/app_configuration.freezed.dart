// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppConfigurationTearOff {
  const _$AppConfigurationTearOff();

  AppConfigurationInitialized initialized(String apiRoot, bool isApiHttps) {
    return AppConfigurationInitialized(
      apiRoot,
      isApiHttps,
    );
  }
}

/// @nodoc
const $AppConfiguration = _$AppConfigurationTearOff();

/// @nodoc
mixin _$AppConfiguration {
  String get apiRoot => throw _privateConstructorUsedError;
  bool get isApiHttps => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiRoot, bool isApiHttps) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apiRoot, bool isApiHttps)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiRoot, bool isApiHttps)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppConfigurationInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppConfigurationInitialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppConfigurationInitialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigurationCopyWith<AppConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigurationCopyWith<$Res> {
  factory $AppConfigurationCopyWith(
          AppConfiguration value, $Res Function(AppConfiguration) then) =
      _$AppConfigurationCopyWithImpl<$Res>;
  $Res call({String apiRoot, bool isApiHttps});
}

/// @nodoc
class _$AppConfigurationCopyWithImpl<$Res>
    implements $AppConfigurationCopyWith<$Res> {
  _$AppConfigurationCopyWithImpl(this._value, this._then);

  final AppConfiguration _value;
  // ignore: unused_field
  final $Res Function(AppConfiguration) _then;

  @override
  $Res call({
    Object? apiRoot = freezed,
    Object? isApiHttps = freezed,
  }) {
    return _then(_value.copyWith(
      apiRoot: apiRoot == freezed
          ? _value.apiRoot
          : apiRoot // ignore: cast_nullable_to_non_nullable
              as String,
      isApiHttps: isApiHttps == freezed
          ? _value.isApiHttps
          : isApiHttps // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $AppConfigurationInitializedCopyWith<$Res>
    implements $AppConfigurationCopyWith<$Res> {
  factory $AppConfigurationInitializedCopyWith(
          AppConfigurationInitialized value,
          $Res Function(AppConfigurationInitialized) then) =
      _$AppConfigurationInitializedCopyWithImpl<$Res>;
  @override
  $Res call({String apiRoot, bool isApiHttps});
}

/// @nodoc
class _$AppConfigurationInitializedCopyWithImpl<$Res>
    extends _$AppConfigurationCopyWithImpl<$Res>
    implements $AppConfigurationInitializedCopyWith<$Res> {
  _$AppConfigurationInitializedCopyWithImpl(AppConfigurationInitialized _value,
      $Res Function(AppConfigurationInitialized) _then)
      : super(_value, (v) => _then(v as AppConfigurationInitialized));

  @override
  AppConfigurationInitialized get _value =>
      super._value as AppConfigurationInitialized;

  @override
  $Res call({
    Object? apiRoot = freezed,
    Object? isApiHttps = freezed,
  }) {
    return _then(AppConfigurationInitialized(
      apiRoot == freezed
          ? _value.apiRoot
          : apiRoot // ignore: cast_nullable_to_non_nullable
              as String,
      isApiHttps == freezed
          ? _value.isApiHttps
          : isApiHttps // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppConfigurationInitialized implements AppConfigurationInitialized {
  _$AppConfigurationInitialized(this.apiRoot, this.isApiHttps);

  @override
  final String apiRoot;
  @override
  final bool isApiHttps;

  @override
  String toString() {
    return 'AppConfiguration.initialized(apiRoot: $apiRoot, isApiHttps: $isApiHttps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppConfigurationInitialized &&
            (identical(other.apiRoot, apiRoot) || other.apiRoot == apiRoot) &&
            (identical(other.isApiHttps, isApiHttps) ||
                other.isApiHttps == isApiHttps));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiRoot, isApiHttps);

  @JsonKey(ignore: true)
  @override
  $AppConfigurationInitializedCopyWith<AppConfigurationInitialized>
      get copyWith => _$AppConfigurationInitializedCopyWithImpl<
          AppConfigurationInitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiRoot, bool isApiHttps) initialized,
  }) {
    return initialized(apiRoot, isApiHttps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apiRoot, bool isApiHttps)? initialized,
  }) {
    return initialized?.call(apiRoot, isApiHttps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiRoot, bool isApiHttps)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(apiRoot, isApiHttps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppConfigurationInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppConfigurationInitialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppConfigurationInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class AppConfigurationInitialized implements AppConfiguration {
  factory AppConfigurationInitialized(String apiRoot, bool isApiHttps) =
      _$AppConfigurationInitialized;

  @override
  String get apiRoot;
  @override
  bool get isApiHttps;
  @override
  @JsonKey(ignore: true)
  $AppConfigurationInitializedCopyWith<AppConfigurationInitialized>
      get copyWith => throw _privateConstructorUsedError;
}