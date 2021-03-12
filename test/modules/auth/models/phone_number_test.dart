import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/auth/models/models.dart';

main() {
  const phoneString = '0598782498';

  group('phone', () {
    group('constructors', () {
      test('pure creates correct instance', () {
        final phone = Phone.pure();
        expect(phone.value, '');
        expect(phone.pure, true);
      });

      test('dirty creates correct instance', () {
        final phone = Phone.dirty(phoneString);
        expect(phone.value, phoneString);
        expect(phone.pure, false);
      });
    });

    group('validator', () {
      test('returns invalid error when phone is empty', () {
        expect(Phone.dirty('').error, PhoneValidationError.invalid);
      });

      test('returns invalid error when phone is malformed', () {
        expect(Phone.dirty('test').error, PhoneValidationError.invalid);
      });

      test('is valid when phone is valid', () {
        expect(Phone.dirty(phoneString).error, isNull);
      });
    });
  });
}
