import 'package:formz/formz.dart';

enum ClinicOwnerValidationError { invalid }

class ClinicOwner extends FormzInput<String, ClinicOwnerValidationError> {
  const ClinicOwner.pure() : super.pure("");
  const ClinicOwner.dirty([String value = '']) : super.dirty(value);

  @override
  ClinicOwnerValidationError? validator(String? value) {
    return value!.isNotEmpty ? null : ClinicOwnerValidationError.invalid;
  }
}
