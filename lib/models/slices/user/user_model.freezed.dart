// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInitial,
    required TResult Function(UserInitialized user, bool refreshing)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInitial,
    TResult? Function(UserInitialized user, bool refreshing)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(UserInitialized user, bool refreshing)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserModelInitial value) initial,
    required TResult Function(UserModelLoadingInitial value) loadingInitial,
    required TResult Function(UserModelInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserModelInitial value)? initial,
    TResult? Function(UserModelLoadingInitial value)? loadingInitial,
    TResult? Function(UserModelInitialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModelInitial value)? initial,
    TResult Function(UserModelLoadingInitial value)? loadingInitial,
    TResult Function(UserModelInitialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserModelInitialImplCopyWith<$Res> {
  factory _$$UserModelInitialImplCopyWith(_$UserModelInitialImpl value,
          $Res Function(_$UserModelInitialImpl) then) =
      __$$UserModelInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserModelInitialImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelInitialImpl>
    implements _$$UserModelInitialImplCopyWith<$Res> {
  __$$UserModelInitialImplCopyWithImpl(_$UserModelInitialImpl _value,
      $Res Function(_$UserModelInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserModelInitialImpl extends UserModelInitial {
  _$UserModelInitialImpl() : super._();

  @override
  String toString() {
    return 'UserModel.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserModelInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInitial,
    required TResult Function(UserInitialized user, bool refreshing)
        initialized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInitial,
    TResult? Function(UserInitialized user, bool refreshing)? initialized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(UserInitialized user, bool refreshing)? initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserModelInitial value) initial,
    required TResult Function(UserModelLoadingInitial value) loadingInitial,
    required TResult Function(UserModelInitialized value) initialized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserModelInitial value)? initial,
    TResult? Function(UserModelLoadingInitial value)? loadingInitial,
    TResult? Function(UserModelInitialized value)? initialized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModelInitial value)? initial,
    TResult Function(UserModelLoadingInitial value)? loadingInitial,
    TResult Function(UserModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserModelInitial extends UserModel {
  factory UserModelInitial() = _$UserModelInitialImpl;
  UserModelInitial._() : super._();
}

/// @nodoc
abstract class _$$UserModelLoadingInitialImplCopyWith<$Res> {
  factory _$$UserModelLoadingInitialImplCopyWith(
          _$UserModelLoadingInitialImpl value,
          $Res Function(_$UserModelLoadingInitialImpl) then) =
      __$$UserModelLoadingInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserModelLoadingInitialImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelLoadingInitialImpl>
    implements _$$UserModelLoadingInitialImplCopyWith<$Res> {
  __$$UserModelLoadingInitialImplCopyWithImpl(
      _$UserModelLoadingInitialImpl _value,
      $Res Function(_$UserModelLoadingInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserModelLoadingInitialImpl extends UserModelLoadingInitial {
  _$UserModelLoadingInitialImpl() : super._();

  @override
  String toString() {
    return 'UserModel.loadingInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelLoadingInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInitial,
    required TResult Function(UserInitialized user, bool refreshing)
        initialized,
  }) {
    return loadingInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInitial,
    TResult? Function(UserInitialized user, bool refreshing)? initialized,
  }) {
    return loadingInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(UserInitialized user, bool refreshing)? initialized,
    required TResult orElse(),
  }) {
    if (loadingInitial != null) {
      return loadingInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserModelInitial value) initial,
    required TResult Function(UserModelLoadingInitial value) loadingInitial,
    required TResult Function(UserModelInitialized value) initialized,
  }) {
    return loadingInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserModelInitial value)? initial,
    TResult? Function(UserModelLoadingInitial value)? loadingInitial,
    TResult? Function(UserModelInitialized value)? initialized,
  }) {
    return loadingInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModelInitial value)? initial,
    TResult Function(UserModelLoadingInitial value)? loadingInitial,
    TResult Function(UserModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (loadingInitial != null) {
      return loadingInitial(this);
    }
    return orElse();
  }
}

abstract class UserModelLoadingInitial extends UserModel {
  factory UserModelLoadingInitial() = _$UserModelLoadingInitialImpl;
  UserModelLoadingInitial._() : super._();
}

/// @nodoc
abstract class _$$UserModelInitializedImplCopyWith<$Res> {
  factory _$$UserModelInitializedImplCopyWith(_$UserModelInitializedImpl value,
          $Res Function(_$UserModelInitializedImpl) then) =
      __$$UserModelInitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserInitialized user, bool refreshing});
}

/// @nodoc
class __$$UserModelInitializedImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelInitializedImpl>
    implements _$$UserModelInitializedImplCopyWith<$Res> {
  __$$UserModelInitializedImplCopyWithImpl(_$UserModelInitializedImpl _value,
      $Res Function(_$UserModelInitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? refreshing = null,
  }) {
    return _then(_$UserModelInitializedImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInitialized,
      null == refreshing
          ? _value.refreshing
          : refreshing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserModelInitializedImpl extends UserModelInitialized {
  _$UserModelInitializedImpl(this.user, [this.refreshing = false]) : super._();

  @override
  final UserInitialized user;
  @override
  @JsonKey()
  final bool refreshing;

  @override
  String toString() {
    return 'UserModel.initialized(user: $user, refreshing: $refreshing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelInitializedImpl &&
            const DeepCollectionEquality().equals(other.user, user) &&
            (identical(other.refreshing, refreshing) ||
                other.refreshing == refreshing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(user), refreshing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelInitializedImplCopyWith<_$UserModelInitializedImpl>
      get copyWith =>
          __$$UserModelInitializedImplCopyWithImpl<_$UserModelInitializedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInitial,
    required TResult Function(UserInitialized user, bool refreshing)
        initialized,
  }) {
    return initialized(user, refreshing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInitial,
    TResult? Function(UserInitialized user, bool refreshing)? initialized,
  }) {
    return initialized?.call(user, refreshing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(UserInitialized user, bool refreshing)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(user, refreshing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserModelInitial value) initial,
    required TResult Function(UserModelLoadingInitial value) loadingInitial,
    required TResult Function(UserModelInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserModelInitial value)? initial,
    TResult? Function(UserModelLoadingInitial value)? loadingInitial,
    TResult? Function(UserModelInitialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModelInitial value)? initial,
    TResult Function(UserModelLoadingInitial value)? loadingInitial,
    TResult Function(UserModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class UserModelInitialized extends UserModel {
  factory UserModelInitialized(final UserInitialized user,
      [final bool refreshing]) = _$UserModelInitializedImpl;
  UserModelInitialized._() : super._();

  UserInitialized get user;
  bool get refreshing;
  @JsonKey(ignore: true)
  _$$UserModelInitializedImplCopyWith<_$UserModelInitializedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
