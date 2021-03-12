import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/auth/bloc/update_profile_photo/update_profile_photo_bloc.dart';

main() {
  group("updateProfilePhotoEvent", () {
    group("ChoosePhotoFromGallery", () {
      test('supports value comparisons', () {
        expect(ChoosePhotoFromGallery(), ChoosePhotoFromGallery());
      });
    });

    group("ChoosePhotoFromCamera", () {
      test('supports value comparisons', () {
        expect(ChoosePhotoFromCamera(), ChoosePhotoFromCamera());
      });
    });

    group("UpdateUserPhoto", () {
      test('supports value comparisons', () {
        File mockPhoto = File('');
        expect(UpdateUserPhoto(mockPhoto), UpdateUserPhoto(mockPhoto));
      });
    });
  });
}
