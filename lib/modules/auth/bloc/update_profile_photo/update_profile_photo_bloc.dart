import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dawa2/modules/auth/utils/utils.dart';
import 'package:user_api/user_api.dart';

part 'update_profile_photo_bloc.freezed.dart';
part 'update_profile_photo_state.dart';
part 'upload_profile_photo_event.dart';

class UpdateProfilePhotoBloc
    extends Bloc<UpdateProfilePhotoEvent, UpdateProfilePhotoState> {
  UpdateProfilePhotoBloc(
      {@required UserApiClient? userApiClient,
      @required ImagePickerBloc? imagePicker})
      : assert(userApiClient != null),
        assert(imagePicker != null),
        _userApiClient = userApiClient ?? UserApiClient(),
        _imagePicker = imagePicker ?? ImagePickerBloc(),
        super(const UpdateProfilePhotoState.initial());

  final UserApiClient _userApiClient;
  final ImagePickerBloc _imagePicker;

  @override
  Stream<UpdateProfilePhotoState> mapEventToState(
          UpdateProfilePhotoEvent event) =>
      event.map(
        choosePhotoFromGallery: _mapChoosePhotoFromGallery,
        choosePhotoFromCamera: _mapChoosePhotoFromCamera,
        updateUserPhoto: _mapUpdatePhoto,
      );

  Stream<UpdateProfilePhotoState> _mapUpdatePhoto(
      UpdateUserPhoto value) async* {
    try {
      yield UpdateInProgress();
      await _userApiClient.updateUserPhoto(value.photo);
      yield UpdateSuccess();
    } catch (_) {
      yield UpdateFailure();
    }
  }

  Stream<UpdateProfilePhotoState> _mapChoosePhotoFromGallery(
      ChoosePhotoFromGallery value) async* {
    final pickedPhoto = await _imagePicker.getImageFromGallery();

    yield SelectedPhoto(pickedPhoto);
  }

  Stream<UpdateProfilePhotoState> _mapChoosePhotoFromCamera(
      ChoosePhotoFromCamera value) async* {
    final pickedPhoto = await _imagePicker.getImageFromCamera();

    yield SelectedPhoto(pickedPhoto);
  }
}
