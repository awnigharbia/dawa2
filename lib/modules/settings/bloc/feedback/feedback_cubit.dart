import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dawa2/modules/settings/models/models.dart';
import 'package:dawa2/modules/settings/repositories/repositories.dart';
import 'package:settings_api/settings_api.dart';

part 'feedback_state.dart';
part 'feedback_cubit.freezed.dart';

class FeedbackCubit extends Cubit<FeedbackState> {
  FeedbackCubit({
    SettingsRepository? settingsRepository,
  })  : _settingsRepository = settingsRepository ?? SettingsRepository(),
        super(FeedbackState());

  final SettingsRepository _settingsRepository;

  void onTitleChanges(String value) {
    final title = FeedbackTitle.dirty(value);

    emit(state.copyWith(
      feedbackTitle: title,
      status: Formz.validate([title]),
    ));
  }

  void onMessageChanges(String value) {
    final message = FeedbackMessage.dirty(value);
    emit(state.copyWith(
        feedbackMessage: message, status: Formz.validate([message])));
  }

  Future sendFeedback() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      final feedback = Feedback(
        title: state.feedbackTitle.value,
        message: state.feedbackMessage.value,
        createdAt: DateTime.now(),
      );
      await _settingsRepository.sendFeedback(feedback);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}
