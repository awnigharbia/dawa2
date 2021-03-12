import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/auth/auth.dart';
import 'package:mockito/mockito.dart';
import 'package:user_api/user_api.dart';

class MockUser extends Mock implements User {}

main() {
  group('AuthenticationState', () {
    group('AuthenticationState.unkown', () {
      test('supports value comparisons', () {
        expect(AuthenticationState.unkown(), AuthenticationState.unkown());
      });
    });

    group('AuthenticationState.authenticated', () {
      test('supports value comparisons', () {
        final user = MockUser();
        expect(AuthenticationState.authenticated(user: user),
            AuthenticationState.authenticated(user: user));
      });
    });

    group('AuthenticationState.unauthenticated', () {
      test('supports value comparisons', () {
        expect(AuthenticationState.unAuthenticated(),
            AuthenticationState.unAuthenticated());
      });
    });
  });
}
