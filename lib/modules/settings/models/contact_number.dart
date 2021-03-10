import 'package:formz/formz.dart';

enum ContactNumberValidationError { invalid }

class ContactNumber extends FormzInput<String, ContactNumberValidationError> {
  const ContactNumber.pure() : super.pure("");
  const ContactNumber.dirty([String value = ""]) : super.dirty(value);

  @override
  ContactNumberValidationError? validator(String? value) {
    return value!.isNotEmpty ? null : ContactNumberValidationError.invalid;
  }
}
