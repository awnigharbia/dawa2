part of 'sms_code_cubit.dart';

@freezed
abstract class SmsCodeState with _$SmsCodeState {
  const factory SmsCodeState({
    @Default(SmsCode.pure()) SmsCode smsCode,
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _SmsCodeState;
}
