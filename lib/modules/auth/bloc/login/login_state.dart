part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(Phone.pure()) Phone phone,
    @Default("970") String phoneCode,
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _LoginState;
}
