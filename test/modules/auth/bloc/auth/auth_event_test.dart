import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/auth/auth.dart';
import 'package:mockito/mockito.dart';
import 'package:user_api/user_api.dart';

class MockUser extends Mock implements User {}

void main() {
  group('AuthenticationEvent', () {
    group('loggedOut', () {
      test('supports value comparisons', () {
        expect(
            AuthenticationLogoutRequested(), AuthenticationLogoutRequested());
      });
    });

    group('AuthenticationUserChanged', () {
      test('supports value comparisons', () {
        MockUser user = MockUser();
        expect(AuthenticationUserChanged(user: user),
            AuthenticationUserChanged(user: user));
      });
    });
  });
}
