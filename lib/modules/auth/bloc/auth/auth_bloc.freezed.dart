// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  Unkown unkown() {
    return const Unkown();
  }

  Authenticated authenticated(
      {AuthenticationStates status = AuthenticationStates.authenticated,
      User? user}) {
    return Authenticated(
      status: status,
      user: user,
    );
  }

  UnAuthenticated unAuthenticated(
      {AuthenticationStates status = AuthenticationStates.unauthenticated}) {
    return UnAuthenticated(
      status: status,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unkown,
    required TResult Function(AuthenticationStates status, User? user)
        authenticated,
    required TResult Function(AuthenticationStates status) unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unkown,
    TResult Function(AuthenticationStates status, User? user)? authenticated,
    TResult Function(AuthenticationStates status)? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unkown value) unkown,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unkown value)? unkown,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class $UnkownCopyWith<$Res> {
  factory $UnkownCopyWith(Unkown value, $Res Function(Unkown) then) =
      _$UnkownCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnkownCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $UnkownCopyWith<$Res> {
  _$UnkownCopyWithImpl(Unkown _value, $Res Function(Unkown) _then)
      : super(_value, (v) => _then(v as Unkown));

  @override
  Unkown get _value => super._value as Unkown;
}

/// @nodoc
class _$Unkown implements Unkown {
  const _$Unkown();

  @override
  String toString() {
    return 'AuthenticationState.unkown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unkown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unkown,
    required TResult Function(AuthenticationStates status, User? user)
        authenticated,
    required TResult Function(AuthenticationStates status) unAuthenticated,
  }) {
    return unkown();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unkown,
    TResult Function(AuthenticationStates status, User? user)? authenticated,
    TResult Function(AuthenticationStates status)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unkown != null) {
      return unkown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unkown value) unkown,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
  }) {
    return unkown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unkown value)? unkown,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unkown != null) {
      return unkown(this);
    }
    return orElse();
  }
}

abstract class Unkown implements AuthenticationState {
  const factory Unkown() = _$Unkown;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({AuthenticationStates status, User? user});
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(Authenticated(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStates,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
class _$Authenticated implements Authenticated {
  const _$Authenticated(
      {this.status = AuthenticationStates.authenticated, this.user});

  @JsonKey(defaultValue: AuthenticationStates.authenticated)
  @override
  final AuthenticationStates status;
  @override
  final User? user;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authenticated &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unkown,
    required TResult Function(AuthenticationStates status, User? user)
        authenticated,
    required TResult Function(AuthenticationStates status) unAuthenticated,
  }) {
    return authenticated(status, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unkown,
    TResult Function(AuthenticationStates status, User? user)? authenticated,
    TResult Function(AuthenticationStates status)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(status, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unkown value) unkown,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unkown value)? unkown,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthenticationState {
  const factory Authenticated({AuthenticationStates status, User? user}) =
      _$Authenticated;

  AuthenticationStates get status => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnAuthenticatedCopyWith<$Res> {
  factory $UnAuthenticatedCopyWith(
          UnAuthenticated value, $Res Function(UnAuthenticated) then) =
      _$UnAuthenticatedCopyWithImpl<$Res>;
  $Res call({AuthenticationStates status});
}

/// @nodoc
class _$UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $UnAuthenticatedCopyWith<$Res> {
  _$UnAuthenticatedCopyWithImpl(
      UnAuthenticated _value, $Res Function(UnAuthenticated) _then)
      : super(_value, (v) => _then(v as UnAuthenticated));

  @override
  UnAuthenticated get _value => super._value as UnAuthenticated;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(UnAuthenticated(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStates,
    ));
  }
}

/// @nodoc
class _$UnAuthenticated implements UnAuthenticated {
  const _$UnAuthenticated({this.status = AuthenticationStates.unauthenticated});

  @JsonKey(defaultValue: AuthenticationStates.unauthenticated)
  @override
  final AuthenticationStates status;

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticated(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnAuthenticated &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $UnAuthenticatedCopyWith<UnAuthenticated> get copyWith =>
      _$UnAuthenticatedCopyWithImpl<UnAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unkown,
    required TResult Function(AuthenticationStates status, User? user)
        authenticated,
    required TResult Function(AuthenticationStates status) unAuthenticated,
  }) {
    return unAuthenticated(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unkown,
    TResult Function(AuthenticationStates status, User? user)? authenticated,
    TResult Function(AuthenticationStates status)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unkown value) unkown,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unkown value)? unkown,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements AuthenticationState {
  const factory UnAuthenticated({AuthenticationStates status}) =
      _$UnAuthenticated;

  AuthenticationStates get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnAuthenticatedCopyWith<UnAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  AuthenticationUserChanged authenticationUserChanged({User? user}) {
    return AuthenticationUserChanged(
      user: user,
    );
  }

  AuthenticationLogoutRequested authenticationLogoutRequested() {
    return const AuthenticationLogoutRequested();
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) authenticationUserChanged,
    required TResult Function() authenticationLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? authenticationUserChanged,
    TResult Function()? authenticationLogoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationUserChanged value)
        authenticationUserChanged,
    required TResult Function(AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationUserChanged value)?
        authenticationUserChanged,
    TResult Function(AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class $AuthenticationUserChangedCopyWith<$Res> {
  factory $AuthenticationUserChangedCopyWith(AuthenticationUserChanged value,
          $Res Function(AuthenticationUserChanged) then) =
      _$AuthenticationUserChangedCopyWithImpl<$Res>;
  $Res call({User? user});
}

/// @nodoc
class _$AuthenticationUserChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationUserChangedCopyWith<$Res> {
  _$AuthenticationUserChangedCopyWithImpl(AuthenticationUserChanged _value,
      $Res Function(AuthenticationUserChanged) _then)
      : super(_value, (v) => _then(v as AuthenticationUserChanged));

  @override
  AuthenticationUserChanged get _value =>
      super._value as AuthenticationUserChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthenticationUserChanged(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
class _$AuthenticationUserChanged implements AuthenticationUserChanged {
  const _$AuthenticationUserChanged({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthenticationEvent.authenticationUserChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticationUserChanged &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $AuthenticationUserChangedCopyWith<AuthenticationUserChanged> get copyWith =>
      _$AuthenticationUserChangedCopyWithImpl<AuthenticationUserChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) authenticationUserChanged,
    required TResult Function() authenticationLogoutRequested,
  }) {
    return authenticationUserChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? authenticationUserChanged,
    TResult Function()? authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (authenticationUserChanged != null) {
      return authenticationUserChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationUserChanged value)
        authenticationUserChanged,
    required TResult Function(AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
  }) {
    return authenticationUserChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationUserChanged value)?
        authenticationUserChanged,
    TResult Function(AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (authenticationUserChanged != null) {
      return authenticationUserChanged(this);
    }
    return orElse();
  }
}

abstract class AuthenticationUserChanged implements AuthenticationEvent {
  const factory AuthenticationUserChanged({User? user}) =
      _$AuthenticationUserChanged;

  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationUserChangedCopyWith<AuthenticationUserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationLogoutRequestedCopyWith<$Res> {
  factory $AuthenticationLogoutRequestedCopyWith(
          AuthenticationLogoutRequested value,
          $Res Function(AuthenticationLogoutRequested) then) =
      _$AuthenticationLogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationLogoutRequestedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationLogoutRequestedCopyWith<$Res> {
  _$AuthenticationLogoutRequestedCopyWithImpl(
      AuthenticationLogoutRequested _value,
      $Res Function(AuthenticationLogoutRequested) _then)
      : super(_value, (v) => _then(v as AuthenticationLogoutRequested));

  @override
  AuthenticationLogoutRequested get _value =>
      super._value as AuthenticationLogoutRequested;
}

/// @nodoc
class _$AuthenticationLogoutRequested implements AuthenticationLogoutRequested {
  const _$AuthenticationLogoutRequested();

  @override
  String toString() {
    return 'AuthenticationEvent.authenticationLogoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthenticationLogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) authenticationUserChanged,
    required TResult Function() authenticationLogoutRequested,
  }) {
    return authenticationLogoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? authenticationUserChanged,
    TResult Function()? authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (authenticationLogoutRequested != null) {
      return authenticationLogoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationUserChanged value)
        authenticationUserChanged,
    required TResult Function(AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
  }) {
    return authenticationLogoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationUserChanged value)?
        authenticationUserChanged,
    TResult Function(AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (authenticationLogoutRequested != null) {
      return authenticationLogoutRequested(this);
    }
    return orElse();
  }
}

abstract class AuthenticationLogoutRequested implements AuthenticationEvent {
  const factory AuthenticationLogoutRequested() =
      _$AuthenticationLogoutRequested;
}
