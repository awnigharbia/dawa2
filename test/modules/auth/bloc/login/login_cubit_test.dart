// @dart=2.9
import 'package:authentication_api/authentication_api.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:dawa2/modules/auth/auth.dart';
import 'package:mockito/mockito.dart';

class MockAuthenticationRepository extends Mock
    implements AuthenticationApiClient {}

main() {
  const invalidPhoneString = "05987824";
  const invalidPhone = Phone.dirty(invalidPhoneString);

  Country mockCountry = Country(phoneCode: '970');
  const validPhoneString = "0598782499";
  const validPhoneStringWithPlus = "+9700598782499";
  const validPhone = Phone.dirty(validPhoneString);

  group("LoginCubit", () {
    AuthenticationApiClient authenticationRepository;

    setUp(() {
      authenticationRepository = MockAuthenticationRepository();
    });

    test('throws AssertionError when authenticationRepository is null', () {
      expect(() => LoginCubit(null), throwsA(isA<AssertionError>()));
    });

    test('initial state is LoginState', () {
      expect(LoginCubit(authenticationRepository).state, LoginState());
    });

    group('phoneChanged', () {
      blocTest<LoginCubit, LoginState>('emit [invalid] when phone is invalid',
          build: () => LoginCubit(authenticationRepository),
          act: (cubit) => cubit.phoneChanged(invalidPhoneString),
          expect: () => <LoginState>[
                LoginState(phone: invalidPhone, status: FormzStatus.invalid)
              ]);

      blocTest<LoginCubit, LoginState>('emit [valid] when phone is valid',
          build: () => LoginCubit(authenticationRepository),
          act: (cubit) => cubit.phoneChanged(validPhoneString),
          expect: () => <LoginState>[
                LoginState(phone: validPhone, status: FormzStatus.valid)
              ]);
    });

    group('phoneCodeChanged', () {
      blocTest<LoginCubit, LoginState>(
          'emit new phone code when phone code provided',
          build: () => LoginCubit(authenticationRepository),
          act: (cubit) => cubit.prefixChanged(mockCountry),
          expect: () => <LoginState>[
                LoginState(phoneCode: mockCountry.phoneCode),
              ]);
    });

    group('logInWithPhone', () {
      blocTest<LoginCubit, LoginState>(
        'does nothing when status is not valid',
        build: () => LoginCubit(authenticationRepository),
        act: (cubit) => cubit.verifyPhoneNumber(null),
        expect: () => <LoginState>[],
      );

      blocTest<LoginCubit, LoginState>(
          'calls verifyPhone with correct phone number',
          build: () => LoginCubit(authenticationRepository),
          seed: () => LoginState(
                status: FormzStatus.valid,
                phone: validPhone,
              ),
          act: (cubit) => cubit.verifyPhoneNumber(null),
          verify: (_) {
            verify(authenticationRepository
                    .verifyPhone(validPhoneStringWithPlus))
                .called(1);
          });

      blocTest<LoginCubit, LoginState>(
        'emits [submissionInProgress, submissionSuccess, submissionFailure] '
        'when logInWithPhone called',
        build: () => LoginCubit(authenticationRepository),
        seed: () => LoginState(
          status: FormzStatus.valid,
          phone: validPhone,
        ),
        act: (cubit) => cubit.verifyPhoneNumber(null),
        expect: () => <LoginState>[
          LoginState(
            status: FormzStatus.submissionInProgress,
            phone: validPhone,
          ),
          LoginState(
            status: FormzStatus.submissionSuccess,
            phone: validPhone,
          ),
          LoginState(
            status: FormzStatus.submissionFailure,
            phone: validPhone,
          ),
        ],
      );
    });
  });
}
