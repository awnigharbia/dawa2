import 'package:authentication_api/authentication_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dawa2/modules/auth/models/sms_code.dart';

part 'sms_code_cubit.freezed.dart';
part 'sms_code_state.dart';

class SmsCodeCubit extends Cubit<SmsCodeState> {
  SmsCodeCubit(this._authenticationRepository)
      : assert(_authenticationRepository != null),
        super(const SmsCodeState());

  int pinLength = 6;
  final AuthenticationApiClient _authenticationRepository;

  void smsCodeChanged(String value) {
    final smsCode = SmsCode.dirty(value);

    emit(state.copyWith(
      smsCode: smsCode,
      status: Formz.validate([smsCode]),
    ));
  }

  Future<void> logInWithSmsCode(String verificationId, int resendToken) async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await _authenticationRepository.authWithPhone(
          verificationId, resendToken, state.smsCode.value);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}
