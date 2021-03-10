import 'dart:async';

import 'package:authentication_api/authentication_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedantic/pedantic.dart';
import 'package:user_api/user_api.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
      {@required AuthenticationApiClient? authenticationRepository})
      : _authenticationRepository =
            authenticationRepository ?? AuthenticationApiClient(),
        super(const AuthenticationState.unkown()) {
    _userSubscription = _authenticationRepository!.user
        .listen((user) => add(AuthenticationUserChanged(user: user)));
  }

  final AuthenticationApiClient? _authenticationRepository;
  StreamSubscription<User>? _userSubscription;

  Stream get user => _authenticationRepository!.userProfile;

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) =>
      event.map(
        authenticationUserChanged: _mapAuthenticationUserChanged,
        authenticationLogoutRequested: _mapAuthenticationLogoutRequested,
      );

  Stream<AuthenticationState> _mapAuthenticationUserChanged(
      AuthenticationUserChanged event) async* {
    yield _mapCheckUserState(event);
  }

  AuthenticationState _mapCheckUserState(AuthenticationUserChanged event) {
    return event.user != User.empty
        ? AuthenticationState.authenticated(user: event.user)
        : AuthenticationState.unAuthenticated();
  }

  @override
  Future<void> close() {
    _userSubscription!.cancel();
    return super.close();
  }

  Stream<AuthenticationState> _mapAuthenticationLogoutRequested(
      AuthenticationEvent event) async* {
    unawaited(_authenticationRepository!.logOut());
  }
}
