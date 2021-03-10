part of 'update_profile_photo_bloc.dart';

@freezed
abstract class UpdateProfilePhotoEvent with _$UpdateProfilePhotoEvent {
  const factory UpdateProfilePhotoEvent.choosePhotoFromGallery() =
      ChoosePhotoFromGallery;
  const factory UpdateProfilePhotoEvent.choosePhotoFromCamera() =
      ChoosePhotoFromCamera;
  const factory UpdateProfilePhotoEvent.updateUserPhoto(File photo) =
      UpdateUserPhoto;
}
