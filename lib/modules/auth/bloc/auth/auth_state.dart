part of 'auth_bloc.dart';

enum AuthenticationStates { authenticated, unauthenticated, unkown }

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unkown() = Unkown;
  const factory AuthenticationState.authenticated(
      {@Default(AuthenticationStates.authenticated) AuthenticationStates status,
      User? user}) = Authenticated;
  const factory AuthenticationState.unAuthenticated(
      {@Default(AuthenticationStates.unauthenticated)
          AuthenticationStates status}) = UnAuthenticated;
}
