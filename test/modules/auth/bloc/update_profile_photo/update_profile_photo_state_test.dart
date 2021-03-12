import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/auth/bloc/update_profile_photo/update_profile_photo_bloc.dart';

main() {
  group("UpdateProfilePhotoState", () {
    group("UpdateProfilePhotoState.initial", () {
      test('supports value comparisons', () {
        expect(UpdateProfilePhotoState.initial(),
            UpdateProfilePhotoState.initial());
      });
    });

    group("UpdateProfilePhotoState.selectedPhoto", () {
      test('supports value comparisons', () {
        File photo = File("");
        expect(UpdateProfilePhotoState.selectedPhoto(photo),
            UpdateProfilePhotoState.selectedPhoto(photo));
      });
    });

    group("UpdateProfilePhotoState.updateSuccess", () {
      test('supports value comparisons', () {
        expect(UpdateProfilePhotoState.updateSuccess(),
            UpdateProfilePhotoState.updateSuccess());
      });
    });

    group("UpdateProfilePhotoState.updateInProgress", () {
      test('supports value comparisons', () {
        expect(UpdateProfilePhotoState.updateInProgress(),
            UpdateProfilePhotoState.updateInProgress());
      });
    });

    group("UpdateProfilePhotoState.updateFailure", () {
      test('supports value comparisons', () {
        expect(UpdateProfilePhotoState.updateFailure(),
            UpdateProfilePhotoState.updateFailure());
      });
    });
  });
}
