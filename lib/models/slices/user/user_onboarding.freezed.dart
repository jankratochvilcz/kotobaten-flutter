// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_onboarding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserOnboarding _$UserOnboardingFromJson(Map<String, dynamic> json) {
  return UserOnboardingInitialized.fromJson(json);
}

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
      _$UserOnboardingCopyWithImpl<$Res, UserOnboarding>;
  @useResult
  $Res call({bool onboardingHidden});
}

/// @nodoc
class _$UserOnboardingCopyWithImpl<$Res, $Val extends UserOnboarding>
    implements $UserOnboardingCopyWith<$Res> {
  _$UserOnboardingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingHidden = null,
  }) {
    return _then(_value.copyWith(
      onboardingHidden: null == onboardingHidden
          ? _value.onboardingHidden
          : onboardingHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserOnboardingInitializedCopyWith<$Res>
    implements $UserOnboardingCopyWith<$Res> {
  factory _$$UserOnboardingInitializedCopyWith(
          _$UserOnboardingInitialized value,
          $Res Function(_$UserOnboardingInitialized) then) =
      __$$UserOnboardingInitializedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool onboardingHidden});
}

/// @nodoc
class __$$UserOnboardingInitializedCopyWithImpl<$Res>
    extends _$UserOnboardingCopyWithImpl<$Res, _$UserOnboardingInitialized>
    implements _$$UserOnboardingInitializedCopyWith<$Res> {
  __$$UserOnboardingInitializedCopyWithImpl(_$UserOnboardingInitialized _value,
      $Res Function(_$UserOnboardingInitialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingHidden = null,
  }) {
    return _then(_$UserOnboardingInitialized(
      null == onboardingHidden
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
            other is _$UserOnboardingInitialized &&
            (identical(other.onboardingHidden, onboardingHidden) ||
                other.onboardingHidden == onboardingHidden));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, onboardingHidden);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserOnboardingInitializedCopyWith<_$UserOnboardingInitialized>
      get copyWith => __$$UserOnboardingInitializedCopyWithImpl<
          _$UserOnboardingInitialized>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserOnboardingInitializedToJson(
      this,
    );
  }
}

abstract class UserOnboardingInitialized implements UserOnboarding {
  factory UserOnboardingInitialized(final bool onboardingHidden) =
      _$UserOnboardingInitialized;

  factory UserOnboardingInitialized.fromJson(Map<String, dynamic> json) =
      _$UserOnboardingInitialized.fromJson;

  @override
  bool get onboardingHidden;
  @override
  @JsonKey(ignore: true)
  _$$UserOnboardingInitializedCopyWith<_$UserOnboardingInitialized>
      get copyWith => throw _privateConstructorUsedError;
}
