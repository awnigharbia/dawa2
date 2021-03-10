import 'package:formz/formz.dart';

enum ClinicNameValidationError { invalid }

class ClinicName extends FormzInput<String, ClinicNameValidationError> {
  const ClinicName.pure() : super.pure("");
  const ClinicName.dirty([String value = '']) : super.dirty(value);

  @override
  validator(value) {
    return value!.isNotEmpty ? null : ClinicNameValidationError.invalid;
  }
}
