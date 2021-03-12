import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:dawa2/modules/auth/auth.dart';

main() {
  const phone = Phone.dirty("0598782498");
  const phoneCode = '972';

  group('loginState', () {
    test('supports value comparisons', () {
      expect(LoginState(), LoginState());
    });

    test('return same results when no properties are passed', () {
      expect(LoginState().copyWith(), LoginState());
    });

    test('return object with updated status when status is passed', () {
      expect(LoginState().copyWith(status: FormzStatus.pure),
          LoginState(status: FormzStatus.pure));
    });

    test('returns object with updated phone when phone is passed', () {
      expect(LoginState().copyWith(phone: phone), LoginState(phone: phone));
    });

    test("returns object with updated phone code when phone code is passed",
        () {
      expect(LoginState().copyWith(phoneCode: phoneCode),
          LoginState(phoneCode: phoneCode));
    });
  });
}
