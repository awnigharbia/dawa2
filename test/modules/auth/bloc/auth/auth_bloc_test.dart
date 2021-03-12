// @dart=2.9
import 'package:authentication_api/authentication_api.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/auth/auth.dart';
import 'package:mockito/mockito.dart';
import 'package:user_api/user_api.dart';

class MockAuthenticationRepository extends Mock
    implements AuthenticationApiClient {}

class MockUser extends Mock implements User {}

void main() {
  final user = MockUser();
  AuthenticationApiClient authenticationRepository;

  setUp(() {
    authenticationRepository = MockAuthenticationRepository();
    when(authenticationRepository.user).thenAnswer((_) => const Stream.empty());
  });

  group('AuthenticationBloc', () {
    test('throws when authenticationRepository is null', () {
      expect(() => AuthenticationBloc(authenticationRepository: null),
          throwsAssertionError);
    });

    test('initial state is AuthenticationState.unkown', () {
      final authenticationBloc = AuthenticationBloc(
          authenticationRepository: authenticationRepository);

      expect(authenticationBloc.state, const AuthenticationState.unkown());
      authenticationBloc.close();
    });

    blocTest<AuthenticationBloc, AuthenticationState>(
      'subscribes to user stream',
      build: () {
        when(authenticationRepository.user)
            .thenAnswer((_) => Stream.value(user));

        return AuthenticationBloc(
            authenticationRepository: authenticationRepository);
      },
      expect: () => <AuthenticationState>[
        AuthenticationState.authenticated(user: user),
      ],
    );

    group('AuthenticationUserChanged', () {
      blocTest(
        'emits [authenticated] when user is not null',
        build: () => AuthenticationBloc(
            authenticationRepository: authenticationRepository),
        act: (AuthenticationBloc bloc) =>
            bloc.add(AuthenticationUserChanged(user: user)),
        expect: () => <AuthenticationState>[
          AuthenticationState.authenticated(user: user),
        ],
      );

      blocTest('emits [unauthenticated] when user is empty',
          build: () => AuthenticationBloc(
              authenticationRepository: authenticationRepository),
          act: (AuthenticationBloc bloc) =>
              bloc.add(AuthenticationUserChanged(user: User.empty)),
          expect: () =>
              <AuthenticationState>[AuthenticationState.unAuthenticated()]);
    });

    group('AuthenticationLogoutRequested', () {
      blocTest(
          'calls logout on authenticationRepository'
          'when authenticationLogoutRequested is added',
          build: () => AuthenticationBloc(
              authenticationRepository: authenticationRepository),
          act: (AuthenticationBloc bloc) =>
              bloc.add(AuthenticationLogoutRequested()),
          verify: (_) {
            verify(authenticationRepository.logOut()).called(1);
          });
    });
  });
}
