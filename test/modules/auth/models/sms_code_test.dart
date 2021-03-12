import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/auth/models/models.dart';

main() {
  const smsCodeString = '123456';

  group('sms code', () {
    group('constructors', () {
      test('pure creates correct instance', () {
        final smsCode = SmsCode.pure();
        expect(smsCode.value, '');
        expect(smsCode.pure, isTrue);
      });

      test('dirty creates correct instance', () {
        final smsCode = SmsCode.dirty(smsCodeString);
        expect(smsCode.value, smsCodeString);
        expect(smsCode.pure, isFalse);
      });
    });

    group('validators', () {
      test('return invalid when sms code is empty', () {
        expect(SmsCode.dirty('').error, SmsCodeValidationError.invalid);
      });

      test('return invalid when sms code is malformed', () {
        expect(SmsCode.dirty('123').error, SmsCodeValidationError.invalid);
      });

      test('is valid when sms code valid', () {
        expect(SmsCode.dirty(smsCodeString).error, isNull);
      });
    });
  });
}
