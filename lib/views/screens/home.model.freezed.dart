// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeModelTearOff {
  const _$HomeModelTearOff();

  Initial initial() {
    return const Initial();
  }

  Initializing initializing() {
    return const Initializing();
  }

  RequiresLogin requiresLogin() {
    return const RequiresLogin();
  }

  Initialized initialized(User user) {
    return Initialized(
      user,
    );
  }

  InitializationError initializationError(String error) {
    return InitializationError(
      error,
    );
  }
}

/// @nodoc
const $HomeModel = _$HomeModelTearOff();

/// @nodoc
mixin _$HomeModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function() requiresLogin,
    required TResult Function(User user) initialized,
    required TResult Function(String error) initializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? requiresLogin,
    TResult Function(User user)? initialized,
    TResult Function(String error)? initializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? requiresLogin,
    TResult Function(User user)? initialized,
    TResult Function(String error)? initializationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Initializing value) initializing,
    required TResult Function(RequiresLogin value) requiresLogin,
    required TResult Function(Initialized value) initialized,
    required TResult Function(InitializationError value) initializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Initializing value)? initializing,
    TResult Function(RequiresLogin value)? requiresLogin,
    TResult Function(Initialized value)? initialized,
    TResult Function(InitializationError value)? initializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Initializing value)? initializing,
    TResult Function(RequiresLogin value)? requiresLogin,
    TResult Function(Initialized value)? initialized,
    TResult Function(InitializationError value)? initializationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res> implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  final HomeModel _value;
  // ignore: unused_field
  final $Res Function(HomeModel) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$HomeModelCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial extends Initial {
  const _$Initial() : super._();

  @override
  String toString() {
    return 'HomeModel.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function() requiresLogin,
    required TResult Function(User user) initialized,
    required TResult Function(String error) initializationError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? requiresLogin,
    TResult Function(User user)? initialized,
    TResult Function(String error)? initializationError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? requiresLogin,
    TResult Function(User user)? initialized,
    TResult Function(String error)? initializationError,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Initializing value) initializing,
    required TResult Function(RequiresLogin value) requiresLogin,
    required TResult Function(Initialized value) initialized,
    required TResult Function(InitializationError value) initializationError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Initializing value)? initializing,
    TResult Function(RequiresLogin value)? requiresLogin,
    TResult Function(Initialized value)? initialized,
    TResult Function(InitializationError value)? initializationError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Initializing value)? initializing,
    TResult Function(RequiresLogin value)? requiresLogin,
    TResult Function(Initialized value)? initialized,
    TResult Function(InitializationError value)? initializationError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial extends HomeModel {
  const factory Initial() = _$Initial;
  const Initial._() : super._();
}

/// @nodoc
abstract class $InitializingCopyWith<$Res> {
  factory $InitializingCopyWith(
          Initializing value, $Res Function(Initializing) then) =
      _$InitializingCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializingCopyWithImpl<$Res> extends _$HomeModelCopyWithImpl<$Res>
    implements $InitializingCopyWith<$Res> {
  _$InitializingCopyWithImpl(
      Initializing _value, $Res Function(Initializing) _then)
      : super(_value, (v) => _then(v as Initializing));

  @override
  Initializing get _value => super._value as Initializing;
}

/// @nodoc

class _$Initializing extends Initializing {
  const _$Initializing() : super._();

  @override
  String toString() {
    return 'HomeModel.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function() requiresLogin,
    required TResult Function(User user) initialized,
    required TResult Function(String error) initializationError,
  }) {
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? requiresLogin,
    TResult Function(User user)? initialized,
    TResult Function(String error)? initializationError,
  }) {
    return initializing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? requiresLogin,
    TResult Function(User user)? initialized,
    TResult Function(String error)? initializationError,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Initializing value) initializing,
    required TResult Function(RequiresLogin value) requiresLogin,
    required TResult Function(Initialized value) initialized,
    required TResult Function(InitializationError value) initializationError,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Initializing value)? initializing,
    TResult Function(RequiresLogin value)? requiresLogin,
    TResult Function(Initialized value)? initialized,
    TResult Function(InitializationError value)? initializationError,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Initializing value)? initializing,
    TResult Function(RequiresLogin value)? requiresLogin,
    TResult Function(Initialized value)? initialized,
    TResult Function(InitializationError value)? initializationError,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class Initializing extends HomeModel {
  const factory Initializing() = _$Initializing;
  const Initializing._() : super._();
}

/// @nodoc
abstract class $RequiresLoginCopyWith<$Res> {
  factory $RequiresLoginCopyWith(
          RequiresLogin value, $Res Function(RequiresLogin) then) =
      _$RequiresLoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequiresLoginCopyWithImpl<$Res> extends _$HomeModelCopyWithImpl<$Res>
    implements $RequiresLoginCopyWith<$Res> {
  _$RequiresLoginCopyWithImpl(
      RequiresLogin _value, $Res Function(RequiresLogin) _then)
      : super(_value, (v) => _then(v as RequiresLogin));

  @override
  RequiresLogin get _value => super._value as RequiresLogin;
}

/// @nodoc

class _$RequiresLogin extends RequiresLogin {
  const _$RequiresLogin() : super._();

  @override
  String toString() {
    return 'HomeModel.requiresLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RequiresLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function() requiresLogin,
    required TResult Function(User user) initialized,
    required TResult Function(String error) initializationError,
  }) {
    return requiresLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? requiresLogin,
    TResult Function(User user)? initialized,
    TResult Function(String error)? initializationError,
  }) {
    return requiresLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? requiresLogin,
    TResult Function(User user)? initialized,
    TResult Function(String error)? initializationError,
    required TResult orElse(),
  }) {
    if (requiresLogin != null) {
      return requiresLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Initializing value) initializing,
    required TResult Function(RequiresLogin value) requiresLogin,
    required TResult Function(Initialized value) initialized,
    required TResult Function(InitializationError value) initializationError,
  }) {
    return requiresLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Initializing value)? initializing,
    TResult Function(RequiresLogin value)? requiresLogin,
    TResult Function(Initialized value)? initialized,
    TResult Function(InitializationError value)? initializationError,
  }) {
    return requiresLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Initializing value)? initializing,
    TResult Function(RequiresLogin value)? requiresLogin,
    TResult Function(Initialized value)? initialized,
    TResult Function(InitializationError value)? initializationError,
    required TResult orElse(),
  }) {
    if (requiresLogin != null) {
      return requiresLogin(this);
    }
    return orElse();
  }
}

abstract class RequiresLogin extends HomeModel {
  const factory RequiresLogin() = _$RequiresLogin;
  const RequiresLogin._() : super._();
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res> extends _$HomeModelCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(Initialized(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$Initialized extends Initialized {
  const _$Initialized(this.user) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'HomeModel.initialized(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialized &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function() requiresLogin,
    required TResult Function(User user) initialized,
    required TResult Function(String error) initializationError,
  }) {
    return initialized(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? requiresLogin,
    TResult Function(User user)? initialized,
    TResult Function(String error)? initializationError,
  }) {
    return initialized?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? requiresLogin,
    TResult Function(User user)? initialized,
    TResult Function(String error)? initializationError,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Initializing value) initializing,
    required TResult Function(RequiresLogin value) requiresLogin,
    required TResult Function(Initialized value) initialized,
    required TResult Function(InitializationError value) initializationError,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Initializing value)? initializing,
    TResult Function(RequiresLogin value)? requiresLogin,
    TResult Function(Initialized value)? initialized,
    TResult Function(InitializationError value)? initializationError,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Initializing value)? initializing,
    TResult Function(RequiresLogin value)? requiresLogin,
    TResult Function(Initialized value)? initialized,
    TResult Function(InitializationError value)? initializationError,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized extends HomeModel {
  const factory Initialized(User user) = _$Initialized;
  const Initialized._() : super._();

  User get user;
  @JsonKey(ignore: true)
  $InitializedCopyWith<Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializationErrorCopyWith<$Res> {
  factory $InitializationErrorCopyWith(
          InitializationError value, $Res Function(InitializationError) then) =
      _$InitializationErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$InitializationErrorCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res>
    implements $InitializationErrorCopyWith<$Res> {
  _$InitializationErrorCopyWithImpl(
      InitializationError _value, $Res Function(InitializationError) _then)
      : super(_value, (v) => _then(v as InitializationError));

  @override
  InitializationError get _value => super._value as InitializationError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(InitializationError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitializationError extends InitializationError {
  const _$InitializationError(this.error) : super._();

  @override
  final String error;

  @override
  String toString() {
    return 'HomeModel.initializationError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitializationError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  $InitializationErrorCopyWith<InitializationError> get copyWith =>
      _$InitializationErrorCopyWithImpl<InitializationError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function() requiresLogin,
    required TResult Function(User user) initialized,
    required TResult Function(String error) initializationError,
  }) {
    return initializationError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? requiresLogin,
    TResult Function(User user)? initialized,
    TResult Function(String error)? initializationError,
  }) {
    return initializationError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? requiresLogin,
    TResult Function(User user)? initialized,
    TResult Function(String error)? initializationError,
    required TResult orElse(),
  }) {
    if (initializationError != null) {
      return initializationError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Initializing value) initializing,
    required TResult Function(RequiresLogin value) requiresLogin,
    required TResult Function(Initialized value) initialized,
    required TResult Function(InitializationError value) initializationError,
  }) {
    return initializationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Initializing value)? initializing,
    TResult Function(RequiresLogin value)? requiresLogin,
    TResult Function(Initialized value)? initialized,
    TResult Function(InitializationError value)? initializationError,
  }) {
    return initializationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Initializing value)? initializing,
    TResult Function(RequiresLogin value)? requiresLogin,
    TResult Function(Initialized value)? initialized,
    TResult Function(InitializationError value)? initializationError,
    required TResult orElse(),
  }) {
    if (initializationError != null) {
      return initializationError(this);
    }
    return orElse();
  }
}

abstract class InitializationError extends HomeModel {
  const factory InitializationError(String error) = _$InitializationError;
  const InitializationError._() : super._();

  String get error;
  @JsonKey(ignore: true)
  $InitializationErrorCopyWith<InitializationError> get copyWith =>
      throw _privateConstructorUsedError;
}
