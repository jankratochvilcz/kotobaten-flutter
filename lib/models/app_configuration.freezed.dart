// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppConfiguration {
  String get apiRoot => throw _privateConstructorUsedError;
  bool get isApiHttps => throw _privateConstructorUsedError;
  Platform get platform => throw _privateConstructorUsedError;
  String get apiVersion => throw _privateConstructorUsedError;
  String get cookieDomain => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiRoot, bool isApiHttps,
            Platform platform, String apiVersion, String cookieDomain)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String apiRoot, bool isApiHttps, Platform platform,
            String apiVersion, String cookieDomain)?
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiRoot, bool isApiHttps, Platform platform,
            String apiVersion, String cookieDomain)?
        initialized,
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
    TResult? Function(AppConfigurationInitialized value)? initialized,
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
      _$AppConfigurationCopyWithImpl<$Res, AppConfiguration>;
  @useResult
  $Res call(
      {String apiRoot,
      bool isApiHttps,
      Platform platform,
      String apiVersion,
      String cookieDomain});
}

/// @nodoc
class _$AppConfigurationCopyWithImpl<$Res, $Val extends AppConfiguration>
    implements $AppConfigurationCopyWith<$Res> {
  _$AppConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiRoot = null,
    Object? isApiHttps = null,
    Object? platform = null,
    Object? apiVersion = null,
    Object? cookieDomain = null,
  }) {
    return _then(_value.copyWith(
      apiRoot: null == apiRoot
          ? _value.apiRoot
          : apiRoot // ignore: cast_nullable_to_non_nullable
              as String,
      isApiHttps: null == isApiHttps
          ? _value.isApiHttps
          : isApiHttps // ignore: cast_nullable_to_non_nullable
              as bool,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as Platform,
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as String,
      cookieDomain: null == cookieDomain
          ? _value.cookieDomain
          : cookieDomain // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppConfigurationInitializedImplCopyWith<$Res>
    implements $AppConfigurationCopyWith<$Res> {
  factory _$$AppConfigurationInitializedImplCopyWith(
          _$AppConfigurationInitializedImpl value,
          $Res Function(_$AppConfigurationInitializedImpl) then) =
      __$$AppConfigurationInitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String apiRoot,
      bool isApiHttps,
      Platform platform,
      String apiVersion,
      String cookieDomain});
}

/// @nodoc
class __$$AppConfigurationInitializedImplCopyWithImpl<$Res>
    extends _$AppConfigurationCopyWithImpl<$Res,
        _$AppConfigurationInitializedImpl>
    implements _$$AppConfigurationInitializedImplCopyWith<$Res> {
  __$$AppConfigurationInitializedImplCopyWithImpl(
      _$AppConfigurationInitializedImpl _value,
      $Res Function(_$AppConfigurationInitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiRoot = null,
    Object? isApiHttps = null,
    Object? platform = null,
    Object? apiVersion = null,
    Object? cookieDomain = null,
  }) {
    return _then(_$AppConfigurationInitializedImpl(
      null == apiRoot
          ? _value.apiRoot
          : apiRoot // ignore: cast_nullable_to_non_nullable
              as String,
      null == isApiHttps
          ? _value.isApiHttps
          : isApiHttps // ignore: cast_nullable_to_non_nullable
              as bool,
      null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as Platform,
      null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as String,
      null == cookieDomain
          ? _value.cookieDomain
          : cookieDomain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppConfigurationInitializedImpl implements AppConfigurationInitialized {
  _$AppConfigurationInitializedImpl(this.apiRoot, this.isApiHttps,
      this.platform, this.apiVersion, this.cookieDomain);

  @override
  final String apiRoot;
  @override
  final bool isApiHttps;
  @override
  final Platform platform;
  @override
  final String apiVersion;
  @override
  final String cookieDomain;

  @override
  String toString() {
    return 'AppConfiguration.initialized(apiRoot: $apiRoot, isApiHttps: $isApiHttps, platform: $platform, apiVersion: $apiVersion, cookieDomain: $cookieDomain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigurationInitializedImpl &&
            (identical(other.apiRoot, apiRoot) || other.apiRoot == apiRoot) &&
            (identical(other.isApiHttps, isApiHttps) ||
                other.isApiHttps == isApiHttps) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion) &&
            (identical(other.cookieDomain, cookieDomain) ||
                other.cookieDomain == cookieDomain));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, apiRoot, isApiHttps, platform, apiVersion, cookieDomain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigurationInitializedImplCopyWith<_$AppConfigurationInitializedImpl>
      get copyWith => __$$AppConfigurationInitializedImplCopyWithImpl<
          _$AppConfigurationInitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiRoot, bool isApiHttps,
            Platform platform, String apiVersion, String cookieDomain)
        initialized,
  }) {
    return initialized(apiRoot, isApiHttps, platform, apiVersion, cookieDomain);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String apiRoot, bool isApiHttps, Platform platform,
            String apiVersion, String cookieDomain)?
        initialized,
  }) {
    return initialized?.call(
        apiRoot, isApiHttps, platform, apiVersion, cookieDomain);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiRoot, bool isApiHttps, Platform platform,
            String apiVersion, String cookieDomain)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(
          apiRoot, isApiHttps, platform, apiVersion, cookieDomain);
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
    TResult? Function(AppConfigurationInitialized value)? initialized,
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
  factory AppConfigurationInitialized(
      final String apiRoot,
      final bool isApiHttps,
      final Platform platform,
      final String apiVersion,
      final String cookieDomain) = _$AppConfigurationInitializedImpl;

  @override
  String get apiRoot;
  @override
  bool get isApiHttps;
  @override
  Platform get platform;
  @override
  String get apiVersion;
  @override
  String get cookieDomain;
  @override
  @JsonKey(ignore: true)
  _$$AppConfigurationInitializedImplCopyWith<_$AppConfigurationInitializedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
