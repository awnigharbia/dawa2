part of 'auth_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authenticationUserChanged({User? user}) =
      AuthenticationUserChanged;
  const factory AuthenticationEvent.authenticationLogoutRequested() =
      AuthenticationLogoutRequested;
}
