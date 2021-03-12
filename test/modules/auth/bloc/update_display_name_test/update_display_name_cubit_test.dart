// @dart=2.9
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:dawa2/modules/auth/auth.dart';
import 'package:dawa2/modules/auth/bloc/update_display_name/update_display_name_cubit.dart';
import 'package:mockito/mockito.dart';
import 'package:user_api/user_api.dart';

class MockUserService extends Mock implements UserApiClient {}

main() {
  const invalidDisplayNameString = '';
  const invalidDisplayName = DisplayName.dirty(invalidDisplayNameString);

  const validDisplayNameString = "Awni Gharbia";
  const validDisplayName = DisplayName.dirty(validDisplayNameString);

  group("UpdateDisplayNameCubit", () {
    UserApiClient userService;

    setUp(() {
      userService = MockUserService();
    });

    test('throws AssertionError when userService is null', () {
      expect(
          () => UpdateDisplayNameCubit(null), throwsA(isA<AssertionError>()));
    });

    test('initial state is UpdateDisplayNameState', () {
      expect(
          UpdateDisplayNameCubit(userService).state, UpdateDisplayNameState());
    });

    group('displayName changed', () {
      blocTest<UpdateDisplayNameCubit, UpdateDisplayNameState>(
          'emit [invalid] when displayName is invalid',
          build: () => UpdateDisplayNameCubit(userService),
          act: (cubit) => cubit.nameChanged(invalidDisplayNameString),
          expect: () => const <UpdateDisplayNameState>[
                UpdateDisplayNameState(
                    displayName: invalidDisplayName,
                    status: FormzStatus.invalid)
              ]);

      blocTest<UpdateDisplayNameCubit, UpdateDisplayNameState>(
          'emit [valid] when displayName is valid',
          build: () => UpdateDisplayNameCubit(userService),
          act: (cubit) => cubit.nameChanged(validDisplayNameString),
          expect: () => const <UpdateDisplayNameState>[
                UpdateDisplayNameState(
                    displayName: validDisplayName, status: FormzStatus.valid)
              ]);
    });

    group("updateDisplayName", () {
      blocTest<UpdateDisplayNameCubit, UpdateDisplayNameState>(
        'does nothing when status is invalid',
        build: () => UpdateDisplayNameCubit(userService),
        act: (cubit) => cubit.updateDisplayName(),
        expect: () => const <UpdateDisplayNameState>[],
      );

      blocTest<UpdateDisplayNameCubit, UpdateDisplayNameState>(
          'calls updateDisplayName with correct displayName',
          build: () => UpdateDisplayNameCubit(userService),
          seed: () => UpdateDisplayNameState(
                status: FormzStatus.valid,
                displayName: validDisplayName,
              ),
          act: (cubit) => cubit.updateDisplayName(),
          verify: (_) {
            verify(userService.updateDisplayName(validDisplayNameString))
                .called(1);
          });

      blocTest<UpdateDisplayNameCubit, UpdateDisplayNameState>(
          'emit [submissionInProgress, submissionSuccess] when updateDisplayName success',
          build: () => UpdateDisplayNameCubit(userService),
          seed: () => UpdateDisplayNameState(
                status: FormzStatus.valid,
                displayName: validDisplayName,
              ),
          act: (cubit) => cubit.updateDisplayName(),
          expect: () => const <UpdateDisplayNameState>[
                UpdateDisplayNameState(
                  displayName: validDisplayName,
                  status: FormzStatus.submissionInProgress,
                ),
                UpdateDisplayNameState(
                  displayName: validDisplayName,
                  status: FormzStatus.submissionSuccess,
                ),
              ]);

      blocTest<UpdateDisplayNameCubit, UpdateDisplayNameState>(
          'emit [submissionInProgress, submissionFailure] when updateDisplayName fail',
          build: () {
            when(userService.updateDisplayName(invalidDisplayNameString))
                .thenThrow(Exception('Oops'));
            return UpdateDisplayNameCubit(userService);
          },
          seed: () => UpdateDisplayNameState(
                status: FormzStatus.valid,
                displayName: invalidDisplayName,
              ),
          act: (cubit) => cubit.updateDisplayName(),
          expect: () => const <UpdateDisplayNameState>[
                UpdateDisplayNameState(
                  displayName: invalidDisplayName,
                  status: FormzStatus.submissionInProgress,
                ),
                UpdateDisplayNameState(
                  displayName: invalidDisplayName,
                  status: FormzStatus.submissionFailure,
                ),
              ]);
    });
  });
}
