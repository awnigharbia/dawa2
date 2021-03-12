// @dart=2.9
import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/auth/bloc/update_profile_photo/update_profile_photo_bloc.dart';
import 'package:dawa2/modules/auth/utils/utils.dart';
import 'package:mockito/mockito.dart';
import 'package:user_api/user_api.dart';

class MockUserService extends Mock implements UserApiClient {}

class MockImagePicker extends Mock implements ImagePickerBloc {}

main() {
  final mockPhoto = File('');
  UserApiClient userService;
  ImagePickerBloc imagePickerBloc;

  setUp(() {
    userService = MockUserService();
    imagePickerBloc = MockImagePicker();
  });

  group("UpdateProfilePhotoBloc", () {
    test('throws AssertionError when imagePickerBloc is null', () {
      expect(
          () => UpdateProfilePhotoBloc(
              userApiClient: userService, imagePicker: null),
          throwsAssertionError);
    });
    test('throws AssertionError when userService is null', () {
      expect(
          () => UpdateProfilePhotoBloc(
              userApiClient: null, imagePicker: imagePickerBloc),
          throwsAssertionError);
    });

    test('initial state is UpdateProfilePhoto.initial', () {
      final updateProfilePhotoBloc = UpdateProfilePhotoBloc(
          userApiClient: userService, imagePicker: imagePickerBloc);

      expect(updateProfilePhotoBloc.state,
          const UpdateProfilePhotoState.initial());
      updateProfilePhotoBloc.close();
    });

    group("ChoosePhoto", () {
      blocTest<UpdateProfilePhotoBloc, UpdateProfilePhotoState>(
          'emit [SelectedPhoto] when ChoosePhotoFromGallery called',
          build: () {
            when(imagePickerBloc.getImageFromGallery())
                .thenAnswer((realInvocation) => Future.value(mockPhoto));
            return UpdateProfilePhotoBloc(
                userApiClient: userService, imagePicker: imagePickerBloc);
          },
          act: (bloc) => bloc.add(ChoosePhotoFromGallery()),
          expect: () => <UpdateProfilePhotoState>[
                SelectedPhoto(mockPhoto),
              ]);

      blocTest<UpdateProfilePhotoBloc, UpdateProfilePhotoState>(
          'emit [SelectedPhoto] when ChoosePhotoFromCamera called',
          build: () {
            when(imagePickerBloc.getImageFromGallery())
                .thenAnswer((realInvocation) => Future.value(mockPhoto));
            return UpdateProfilePhotoBloc(
                userApiClient: userService, imagePicker: imagePickerBloc);
          },
          act: (bloc) => bloc.add(ChoosePhotoFromGallery()),
          expect: () => <UpdateProfilePhotoState>[
                SelectedPhoto(mockPhoto),
              ]);
    });

    group('UpdateUserPhoto', () {
      blocTest<UpdateProfilePhotoBloc, UpdateProfilePhotoState>(
          'emit [UpdateInProgress, UpdateSuccess] when updatePhoto success',
          build: () => UpdateProfilePhotoBloc(
              userApiClient: userService, imagePicker: imagePickerBloc),
          act: (bloc) => bloc.add(UpdateUserPhoto(mockPhoto)),
          expect: () => const <UpdateProfilePhotoState>[
                UpdateInProgress(),
                UpdateSuccess(),
              ]);

      blocTest<UpdateProfilePhotoBloc, UpdateProfilePhotoState>(
          'emit [UpdateInProgress, UpdateFailure] when updatePhoto failure',
          build: () {
            when(userService.updateUserPhoto(mockPhoto))
                .thenThrow(Exception("Oops"));
            return UpdateProfilePhotoBloc(
                userApiClient: userService, imagePicker: imagePickerBloc);
          },
          act: (bloc) => bloc.add(UpdateUserPhoto(mockPhoto)),
          expect: () => const <UpdateProfilePhotoState>[
                UpdateInProgress(),
                UpdateFailure(),
              ]);
    });
  });
}
