part of 'update_profile_photo_bloc.dart';

@freezed
abstract class UpdateProfilePhotoState with _$UpdateProfilePhotoState {
  const factory UpdateProfilePhotoState.initial() = Initial;
  const factory UpdateProfilePhotoState.selectedPhoto(File photo) =
      SelectedPhoto;
  const factory UpdateProfilePhotoState.updateSuccess() = UpdateSuccess;
  const factory UpdateProfilePhotoState.updateInProgress() = UpdateInProgress;
  const factory UpdateProfilePhotoState.updateFailure() = UpdateFailure;
}
