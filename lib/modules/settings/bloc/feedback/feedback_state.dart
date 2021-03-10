part of 'feedback_cubit.dart';

@freezed
abstract class FeedbackState with _$FeedbackState {
  const factory FeedbackState({
    @Default(FeedbackTitle.pure()) FeedbackTitle feedbackTitle,
    @Default(FeedbackMessage.pure()) FeedbackMessage feedbackMessage,
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _FeedBackState;
}
