// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_onboarding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserOnboarding _$UserOnboardingFromJson(Map<String, dynamic> json) {
  return UserOnboardingInitialized.fromJson(json);
}

/// @nodoc
class _$UserOnboardingTearOff {
  const _$UserOnboardingTearOff();

  UserOnboardingInitialized call(bool onboardingHidden) {
    return UserOnboardingInitialized(
      onboardingHidden,
    );
  }

  UserOnboarding fromJson(Map<String, Object?> json) {
    return UserOnboarding.fromJson(json);
  }
}

/// @nodoc
const $UserOnboarding = _$UserOnboardingTearOff();

/// @nodoc
mixin _$UserOnboarding {
  bool get onboardingHidden => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserOnboardingCopyWith<UserOnboarding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOnboardingCopyWith<$Res> {
  factory $UserOnboardingCopyWith(
          UserOnboarding value, $Res Function(UserOnboarding) then) =
      _$UserOnboardingCopyWithImpl<$Res>;
  $Res call({bool onboardingHidden});
}

/// @nodoc
class _$UserOnboardingCopyWithImpl<$Res>
    implements $UserOnboardingCopyWith<$Res> {
  _$UserOnboardingCopyWithImpl(this._value, this._then);

  final UserOnboarding _value;
  // ignore: unused_field
  final $Res Function(UserOnboarding) _then;

  @override
  $Res call({
    Object? onboardingHidden = freezed,
  }) {
    return _then(_value.copyWith(
      onboardingHidden: onboardingHidden == freezed
          ? _value.onboardingHidden
          : onboardingHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $UserOnboardingInitializedCopyWith<$Res>
    implements $UserOnboardingCopyWith<$Res> {
  factory $UserOnboardingInitializedCopyWith(UserOnboardingInitialized value,
          $Res Function(UserOnboardingInitialized) then) =
      _$UserOnboardingInitializedCopyWithImpl<$Res>;
  @override
  $Res call({bool onboardingHidden});
}

/// @nodoc
class _$UserOnboardingInitializedCopyWithImpl<$Res>
    extends _$UserOnboardingCopyWithImpl<$Res>
    implements $UserOnboardingInitializedCopyWith<$Res> {
  _$UserOnboardingInitializedCopyWithImpl(UserOnboardingInitialized _value,
      $Res Function(UserOnboardingInitialized) _then)
      : super(_value, (v) => _then(v as UserOnboardingInitialized));

  @override
  UserOnboardingInitialized get _value =>
      super._value as UserOnboardingInitialized;

  @override
  $Res call({
    Object? onboardingHidden = freezed,
  }) {
    return _then(UserOnboardingInitialized(
      onboardingHidden == freezed
          ? _value.onboardingHidden
          : onboardingHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserOnboardingInitialized implements UserOnboardingInitialized {
  _$UserOnboardingInitialized(this.onboardingHidden);

  factory _$UserOnboardingInitialized.fromJson(Map<String, dynamic> json) =>
      _$$UserOnboardingInitializedFromJson(json);

  @override
  final bool onboardingHidden;

  @override
  String toString() {
    return 'UserOnboarding(onboardingHidden: $onboardingHidden)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserOnboardingInitialized &&
            (identical(other.onboardingHidden, onboardingHidden) ||
                other.onboardingHidden == onboardingHidden));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onboardingHidden);

  @JsonKey(ignore: true)
  @override
  $UserOnboardingInitializedCopyWith<UserOnboardingInitialized> get copyWith =>
      _$UserOnboardingInitializedCopyWithImpl<UserOnboardingInitialized>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserOnboardingInitializedToJson(this);
  }
}

abstract class UserOnboardingInitialized implements UserOnboarding {
  factory UserOnboardingInitialized(bool onboardingHidden) =
      _$UserOnboardingInitialized;

  factory UserOnboardingInitialized.fromJson(Map<String, dynamic> json) =
      _$UserOnboardingInitialized.fromJson;

  @override
  bool get onboardingHidden;
  @override
  @JsonKey(ignore: true)
  $UserOnboardingInitializedCopyWith<UserOnboardingInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}
