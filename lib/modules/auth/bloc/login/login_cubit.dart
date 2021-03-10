import 'package:authentication_api/authentication_api.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dawa2/config/router/route_name_builder.dart';
import 'package:dawa2/modules/auth/models/phone_number.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authenticationRepository)
      : assert(_authenticationRepository != null),
        super(const LoginState());

  final AuthenticationApiClient _authenticationRepository;

  Future<void> verifyPhoneNumber(BuildContext context) async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      final phone = "+" + state.phoneCode + state.phone.value;
      PhoneAuthResponse result =
          await _authenticationRepository.verifyPhone(phone);

      onCodeSent(context, result);
    } on AuthException {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    } catch (e) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }

  void onCodeSent(BuildContext context, PhoneAuthResponse result) {
    emit(state.copyWith(status: FormzStatus.submissionSuccess));
    String phone = state.phoneCode + state.phone.value;

    Navigator.pushNamed(
        context,
        RouteNameBuilder.smsCodeVerification(
            phone, result.verificationId, result.resendCode));
  }

  void phoneChanged(String value) {
    final phoneWithNoSpaces = value.replaceAll(new RegExp(r"\s+"), "");
    final phone = Phone.dirty(phoneWithNoSpaces);

    emit(state.copyWith(
      phone: phone,
      status: Formz.validate([phone]),
    ));
  }

  void prefixChanged(Country country) {
    emit(state.copyWith(phoneCode: country.phoneCode));
  }
}
