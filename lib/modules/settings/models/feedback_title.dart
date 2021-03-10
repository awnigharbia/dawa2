import 'package:formz/formz.dart';

enum FeedbackMessageValidationError { invalid }

class FeedbackMessage
    extends FormzInput<String, FeedbackMessageValidationError> {
  const FeedbackMessage.pure() : super.pure("");
  const FeedbackMessage.dirty([String value = ""]) : super.dirty(value);

  @override
  FeedbackMessageValidationError? validator(String? value) {
    return value!.isNotEmpty ? null : FeedbackMessageValidationError.invalid;
  }
}
