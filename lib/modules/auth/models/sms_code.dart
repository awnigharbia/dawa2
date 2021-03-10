import 'package:formz/formz.dart';

enum SmsCodeValidationError { invalid }

class SmsCode extends FormzInput<String, SmsCodeValidationError> {
  const SmsCode.pure() : super.pure('');
  const SmsCode.dirty([String value = '']) : super.dirty(value);

  @override
  SmsCodeValidationError? validator(String? value) {
    const int PIN_LENGTH = 6;
    return value!.isNotEmpty && value.length == PIN_LENGTH
        ? null
        : SmsCodeValidationError.invalid;
  }
}
