import 'package:formz/formz.dart';

enum FeedbackTitleValidationError { invalid }

class FeedbackTitle extends FormzInput<String, FeedbackTitleValidationError> {
  const FeedbackTitle.pure() : super.pure("");
  const FeedbackTitle.dirty([String value = '']) : super.dirty(value);

  @override
  FeedbackTitleValidationError? validator(String? value) {
    return value!.isNotEmpty ? null : FeedbackTitleValidationError.invalid;
  }
}
