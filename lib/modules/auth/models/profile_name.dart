import 'package:formz/formz.dart';

enum DisplayNameValidationError { invalid }

class DisplayName extends FormzInput<String, DisplayNameValidationError> {
  const DisplayName.pure() : super.pure('');
  const DisplayName.dirty([String value = '']) : super.dirty(value);

  @override
  DisplayNameValidationError? validator(String? value) {
    return value!.isNotEmpty ? null : DisplayNameValidationError.invalid;
  }
}
