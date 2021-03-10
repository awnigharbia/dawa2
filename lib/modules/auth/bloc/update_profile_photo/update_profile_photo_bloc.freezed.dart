// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_profile_photo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateProfilePhotoStateTearOff {
  const _$UpdateProfilePhotoStateTearOff();

  Initial initial() {
    return const Initial();
  }

  SelectedPhoto selectedPhoto(File photo) {
    return SelectedPhoto(
      photo,
    );
  }

  UpdateSuccess updateSuccess() {
    return const UpdateSuccess();
  }

  UpdateInProgress updateInProgress() {
    return const UpdateInProgress();
  }

  UpdateFailure updateFailure() {
    return const UpdateFailure();
  }
}

/// @nodoc
const $UpdateProfilePhotoState = _$UpdateProfilePhotoStateTearOff();

/// @nodoc
mixin _$UpdateProfilePhotoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File photo) selectedPhoto,
    required TResult Function() updateSuccess,
    required TResult Function() updateInProgress,
    required TResult Function() updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File photo)? selectedPhoto,
    TResult Function()? updateSuccess,
    TResult Function()? updateInProgress,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SelectedPhoto value) selectedPhoto,
    required TResult Function(UpdateSuccess value) updateSuccess,
    required TResult Function(UpdateInProgress value) updateInProgress,
    required TResult Function(UpdateFailure value) updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SelectedPhoto value)? selectedPhoto,
    TResult Function(UpdateSuccess value)? updateSuccess,
    TResult Function(UpdateInProgress value)? updateInProgress,
    TResult Function(UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfilePhotoStateCopyWith<$Res> {
  factory $UpdateProfilePhotoStateCopyWith(UpdateProfilePhotoState value,
          $Res Function(UpdateProfilePhotoState) then) =
      _$UpdateProfilePhotoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfilePhotoStateCopyWithImpl<$Res>
    implements $UpdateProfilePhotoStateCopyWith<$Res> {
  _$UpdateProfilePhotoStateCopyWithImpl(this._value, this._then);

  final UpdateProfilePhotoState _value;
  // ignore: unused_field
  final $Res Function(UpdateProfilePhotoState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$UpdateProfilePhotoStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'UpdateProfilePhotoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File photo) selectedPhoto,
    required TResult Function() updateSuccess,
    required TResult Function() updateInProgress,
    required TResult Function() updateFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File photo)? selectedPhoto,
    TResult Function()? updateSuccess,
    TResult Function()? updateInProgress,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SelectedPhoto value) selectedPhoto,
    required TResult Function(UpdateSuccess value) updateSuccess,
    required TResult Function(UpdateInProgress value) updateInProgress,
    required TResult Function(UpdateFailure value) updateFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SelectedPhoto value)? selectedPhoto,
    TResult Function(UpdateSuccess value)? updateSuccess,
    TResult Function(UpdateInProgress value)? updateInProgress,
    TResult Function(UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UpdateProfilePhotoState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $SelectedPhotoCopyWith<$Res> {
  factory $SelectedPhotoCopyWith(
          SelectedPhoto value, $Res Function(SelectedPhoto) then) =
      _$SelectedPhotoCopyWithImpl<$Res>;
  $Res call({File photo});
}

/// @nodoc
class _$SelectedPhotoCopyWithImpl<$Res>
    extends _$UpdateProfilePhotoStateCopyWithImpl<$Res>
    implements $SelectedPhotoCopyWith<$Res> {
  _$SelectedPhotoCopyWithImpl(
      SelectedPhoto _value, $Res Function(SelectedPhoto) _then)
      : super(_value, (v) => _then(v as SelectedPhoto));

  @override
  SelectedPhoto get _value => super._value as SelectedPhoto;

  @override
  $Res call({
    Object? photo = freezed,
  }) {
    return _then(SelectedPhoto(
      photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
class _$SelectedPhoto implements SelectedPhoto {
  const _$SelectedPhoto(this.photo);

  @override
  final File photo;

  @override
  String toString() {
    return 'UpdateProfilePhotoState.selectedPhoto(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectedPhoto &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photo);

  @JsonKey(ignore: true)
  @override
  $SelectedPhotoCopyWith<SelectedPhoto> get copyWith =>
      _$SelectedPhotoCopyWithImpl<SelectedPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File photo) selectedPhoto,
    required TResult Function() updateSuccess,
    required TResult Function() updateInProgress,
    required TResult Function() updateFailure,
  }) {
    return selectedPhoto(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File photo)? selectedPhoto,
    TResult Function()? updateSuccess,
    TResult Function()? updateInProgress,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (selectedPhoto != null) {
      return selectedPhoto(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SelectedPhoto value) selectedPhoto,
    required TResult Function(UpdateSuccess value) updateSuccess,
    required TResult Function(UpdateInProgress value) updateInProgress,
    required TResult Function(UpdateFailure value) updateFailure,
  }) {
    return selectedPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SelectedPhoto value)? selectedPhoto,
    TResult Function(UpdateSuccess value)? updateSuccess,
    TResult Function(UpdateInProgress value)? updateInProgress,
    TResult Function(UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (selectedPhoto != null) {
      return selectedPhoto(this);
    }
    return orElse();
  }
}

abstract class SelectedPhoto implements UpdateProfilePhotoState {
  const factory SelectedPhoto(File photo) = _$SelectedPhoto;

  File get photo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedPhotoCopyWith<SelectedPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSuccessCopyWith<$Res> {
  factory $UpdateSuccessCopyWith(
          UpdateSuccess value, $Res Function(UpdateSuccess) then) =
      _$UpdateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateSuccessCopyWithImpl<$Res>
    extends _$UpdateProfilePhotoStateCopyWithImpl<$Res>
    implements $UpdateSuccessCopyWith<$Res> {
  _$UpdateSuccessCopyWithImpl(
      UpdateSuccess _value, $Res Function(UpdateSuccess) _then)
      : super(_value, (v) => _then(v as UpdateSuccess));

  @override
  UpdateSuccess get _value => super._value as UpdateSuccess;
}

/// @nodoc
class _$UpdateSuccess implements UpdateSuccess {
  const _$UpdateSuccess();

  @override
  String toString() {
    return 'UpdateProfilePhotoState.updateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File photo) selectedPhoto,
    required TResult Function() updateSuccess,
    required TResult Function() updateInProgress,
    required TResult Function() updateFailure,
  }) {
    return updateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File photo)? selectedPhoto,
    TResult Function()? updateSuccess,
    TResult Function()? updateInProgress,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SelectedPhoto value) selectedPhoto,
    required TResult Function(UpdateSuccess value) updateSuccess,
    required TResult Function(UpdateInProgress value) updateInProgress,
    required TResult Function(UpdateFailure value) updateFailure,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SelectedPhoto value)? selectedPhoto,
    TResult Function(UpdateSuccess value)? updateSuccess,
    TResult Function(UpdateInProgress value)? updateInProgress,
    TResult Function(UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class UpdateSuccess implements UpdateProfilePhotoState {
  const factory UpdateSuccess() = _$UpdateSuccess;
}

/// @nodoc
abstract class $UpdateInProgressCopyWith<$Res> {
  factory $UpdateInProgressCopyWith(
          UpdateInProgress value, $Res Function(UpdateInProgress) then) =
      _$UpdateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateInProgressCopyWithImpl<$Res>
    extends _$UpdateProfilePhotoStateCopyWithImpl<$Res>
    implements $UpdateInProgressCopyWith<$Res> {
  _$UpdateInProgressCopyWithImpl(
      UpdateInProgress _value, $Res Function(UpdateInProgress) _then)
      : super(_value, (v) => _then(v as UpdateInProgress));

  @override
  UpdateInProgress get _value => super._value as UpdateInProgress;
}

/// @nodoc
class _$UpdateInProgress implements UpdateInProgress {
  const _$UpdateInProgress();

  @override
  String toString() {
    return 'UpdateProfilePhotoState.updateInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File photo) selectedPhoto,
    required TResult Function() updateSuccess,
    required TResult Function() updateInProgress,
    required TResult Function() updateFailure,
  }) {
    return updateInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File photo)? selectedPhoto,
    TResult Function()? updateSuccess,
    TResult Function()? updateInProgress,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SelectedPhoto value) selectedPhoto,
    required TResult Function(UpdateSuccess value) updateSuccess,
    required TResult Function(UpdateInProgress value) updateInProgress,
    required TResult Function(UpdateFailure value) updateFailure,
  }) {
    return updateInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SelectedPhoto value)? selectedPhoto,
    TResult Function(UpdateSuccess value)? updateSuccess,
    TResult Function(UpdateInProgress value)? updateInProgress,
    TResult Function(UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress(this);
    }
    return orElse();
  }
}

abstract class UpdateInProgress implements UpdateProfilePhotoState {
  const factory UpdateInProgress() = _$UpdateInProgress;
}

/// @nodoc
abstract class $UpdateFailureCopyWith<$Res> {
  factory $UpdateFailureCopyWith(
          UpdateFailure value, $Res Function(UpdateFailure) then) =
      _$UpdateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateFailureCopyWithImpl<$Res>
    extends _$UpdateProfilePhotoStateCopyWithImpl<$Res>
    implements $UpdateFailureCopyWith<$Res> {
  _$UpdateFailureCopyWithImpl(
      UpdateFailure _value, $Res Function(UpdateFailure) _then)
      : super(_value, (v) => _then(v as UpdateFailure));

  @override
  UpdateFailure get _value => super._value as UpdateFailure;
}

/// @nodoc
class _$UpdateFailure implements UpdateFailure {
  const _$UpdateFailure();

  @override
  String toString() {
    return 'UpdateProfilePhotoState.updateFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File photo) selectedPhoto,
    required TResult Function() updateSuccess,
    required TResult Function() updateInProgress,
    required TResult Function() updateFailure,
  }) {
    return updateFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File photo)? selectedPhoto,
    TResult Function()? updateSuccess,
    TResult Function()? updateInProgress,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SelectedPhoto value) selectedPhoto,
    required TResult Function(UpdateSuccess value) updateSuccess,
    required TResult Function(UpdateInProgress value) updateInProgress,
    required TResult Function(UpdateFailure value) updateFailure,
  }) {
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SelectedPhoto value)? selectedPhoto,
    TResult Function(UpdateSuccess value)? updateSuccess,
    TResult Function(UpdateInProgress value)? updateInProgress,
    TResult Function(UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class UpdateFailure implements UpdateProfilePhotoState {
  const factory UpdateFailure() = _$UpdateFailure;
}

/// @nodoc
class _$UpdateProfilePhotoEventTearOff {
  const _$UpdateProfilePhotoEventTearOff();

  ChoosePhotoFromGallery choosePhotoFromGallery() {
    return const ChoosePhotoFromGallery();
  }

  ChoosePhotoFromCamera choosePhotoFromCamera() {
    return const ChoosePhotoFromCamera();
  }

  UpdateUserPhoto updateUserPhoto(File photo) {
    return UpdateUserPhoto(
      photo,
    );
  }
}

/// @nodoc
const $UpdateProfilePhotoEvent = _$UpdateProfilePhotoEventTearOff();

/// @nodoc
mixin _$UpdateProfilePhotoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() choosePhotoFromGallery,
    required TResult Function() choosePhotoFromCamera,
    required TResult Function(File photo) updateUserPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? choosePhotoFromGallery,
    TResult Function()? choosePhotoFromCamera,
    TResult Function(File photo)? updateUserPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChoosePhotoFromGallery value)
        choosePhotoFromGallery,
    required TResult Function(ChoosePhotoFromCamera value)
        choosePhotoFromCamera,
    required TResult Function(UpdateUserPhoto value) updateUserPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChoosePhotoFromGallery value)? choosePhotoFromGallery,
    TResult Function(ChoosePhotoFromCamera value)? choosePhotoFromCamera,
    TResult Function(UpdateUserPhoto value)? updateUserPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfilePhotoEventCopyWith<$Res> {
  factory $UpdateProfilePhotoEventCopyWith(UpdateProfilePhotoEvent value,
          $Res Function(UpdateProfilePhotoEvent) then) =
      _$UpdateProfilePhotoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfilePhotoEventCopyWithImpl<$Res>
    implements $UpdateProfilePhotoEventCopyWith<$Res> {
  _$UpdateProfilePhotoEventCopyWithImpl(this._value, this._then);

  final UpdateProfilePhotoEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateProfilePhotoEvent) _then;
}

/// @nodoc
abstract class $ChoosePhotoFromGalleryCopyWith<$Res> {
  factory $ChoosePhotoFromGalleryCopyWith(ChoosePhotoFromGallery value,
          $Res Function(ChoosePhotoFromGallery) then) =
      _$ChoosePhotoFromGalleryCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChoosePhotoFromGalleryCopyWithImpl<$Res>
    extends _$UpdateProfilePhotoEventCopyWithImpl<$Res>
    implements $ChoosePhotoFromGalleryCopyWith<$Res> {
  _$ChoosePhotoFromGalleryCopyWithImpl(ChoosePhotoFromGallery _value,
      $Res Function(ChoosePhotoFromGallery) _then)
      : super(_value, (v) => _then(v as ChoosePhotoFromGallery));

  @override
  ChoosePhotoFromGallery get _value => super._value as ChoosePhotoFromGallery;
}

/// @nodoc
class _$ChoosePhotoFromGallery implements ChoosePhotoFromGallery {
  const _$ChoosePhotoFromGallery();

  @override
  String toString() {
    return 'UpdateProfilePhotoEvent.choosePhotoFromGallery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChoosePhotoFromGallery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() choosePhotoFromGallery,
    required TResult Function() choosePhotoFromCamera,
    required TResult Function(File photo) updateUserPhoto,
  }) {
    return choosePhotoFromGallery();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? choosePhotoFromGallery,
    TResult Function()? choosePhotoFromCamera,
    TResult Function(File photo)? updateUserPhoto,
    required TResult orElse(),
  }) {
    if (choosePhotoFromGallery != null) {
      return choosePhotoFromGallery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChoosePhotoFromGallery value)
        choosePhotoFromGallery,
    required TResult Function(ChoosePhotoFromCamera value)
        choosePhotoFromCamera,
    required TResult Function(UpdateUserPhoto value) updateUserPhoto,
  }) {
    return choosePhotoFromGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChoosePhotoFromGallery value)? choosePhotoFromGallery,
    TResult Function(ChoosePhotoFromCamera value)? choosePhotoFromCamera,
    TResult Function(UpdateUserPhoto value)? updateUserPhoto,
    required TResult orElse(),
  }) {
    if (choosePhotoFromGallery != null) {
      return choosePhotoFromGallery(this);
    }
    return orElse();
  }
}

abstract class ChoosePhotoFromGallery implements UpdateProfilePhotoEvent {
  const factory ChoosePhotoFromGallery() = _$ChoosePhotoFromGallery;
}

/// @nodoc
abstract class $ChoosePhotoFromCameraCopyWith<$Res> {
  factory $ChoosePhotoFromCameraCopyWith(ChoosePhotoFromCamera value,
          $Res Function(ChoosePhotoFromCamera) then) =
      _$ChoosePhotoFromCameraCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChoosePhotoFromCameraCopyWithImpl<$Res>
    extends _$UpdateProfilePhotoEventCopyWithImpl<$Res>
    implements $ChoosePhotoFromCameraCopyWith<$Res> {
  _$ChoosePhotoFromCameraCopyWithImpl(
      ChoosePhotoFromCamera _value, $Res Function(ChoosePhotoFromCamera) _then)
      : super(_value, (v) => _then(v as ChoosePhotoFromCamera));

  @override
  ChoosePhotoFromCamera get _value => super._value as ChoosePhotoFromCamera;
}

/// @nodoc
class _$ChoosePhotoFromCamera implements ChoosePhotoFromCamera {
  const _$ChoosePhotoFromCamera();

  @override
  String toString() {
    return 'UpdateProfilePhotoEvent.choosePhotoFromCamera()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChoosePhotoFromCamera);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() choosePhotoFromGallery,
    required TResult Function() choosePhotoFromCamera,
    required TResult Function(File photo) updateUserPhoto,
  }) {
    return choosePhotoFromCamera();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? choosePhotoFromGallery,
    TResult Function()? choosePhotoFromCamera,
    TResult Function(File photo)? updateUserPhoto,
    required TResult orElse(),
  }) {
    if (choosePhotoFromCamera != null) {
      return choosePhotoFromCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChoosePhotoFromGallery value)
        choosePhotoFromGallery,
    required TResult Function(ChoosePhotoFromCamera value)
        choosePhotoFromCamera,
    required TResult Function(UpdateUserPhoto value) updateUserPhoto,
  }) {
    return choosePhotoFromCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChoosePhotoFromGallery value)? choosePhotoFromGallery,
    TResult Function(ChoosePhotoFromCamera value)? choosePhotoFromCamera,
    TResult Function(UpdateUserPhoto value)? updateUserPhoto,
    required TResult orElse(),
  }) {
    if (choosePhotoFromCamera != null) {
      return choosePhotoFromCamera(this);
    }
    return orElse();
  }
}

abstract class ChoosePhotoFromCamera implements UpdateProfilePhotoEvent {
  const factory ChoosePhotoFromCamera() = _$ChoosePhotoFromCamera;
}

/// @nodoc
abstract class $UpdateUserPhotoCopyWith<$Res> {
  factory $UpdateUserPhotoCopyWith(
          UpdateUserPhoto value, $Res Function(UpdateUserPhoto) then) =
      _$UpdateUserPhotoCopyWithImpl<$Res>;
  $Res call({File photo});
}

/// @nodoc
class _$UpdateUserPhotoCopyWithImpl<$Res>
    extends _$UpdateProfilePhotoEventCopyWithImpl<$Res>
    implements $UpdateUserPhotoCopyWith<$Res> {
  _$UpdateUserPhotoCopyWithImpl(
      UpdateUserPhoto _value, $Res Function(UpdateUserPhoto) _then)
      : super(_value, (v) => _then(v as UpdateUserPhoto));

  @override
  UpdateUserPhoto get _value => super._value as UpdateUserPhoto;

  @override
  $Res call({
    Object? photo = freezed,
  }) {
    return _then(UpdateUserPhoto(
      photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
class _$UpdateUserPhoto implements UpdateUserPhoto {
  const _$UpdateUserPhoto(this.photo);

  @override
  final File photo;

  @override
  String toString() {
    return 'UpdateProfilePhotoEvent.updateUserPhoto(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUserPhoto &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photo);

  @JsonKey(ignore: true)
  @override
  $UpdateUserPhotoCopyWith<UpdateUserPhoto> get copyWith =>
      _$UpdateUserPhotoCopyWithImpl<UpdateUserPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() choosePhotoFromGallery,
    required TResult Function() choosePhotoFromCamera,
    required TResult Function(File photo) updateUserPhoto,
  }) {
    return updateUserPhoto(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? choosePhotoFromGallery,
    TResult Function()? choosePhotoFromCamera,
    TResult Function(File photo)? updateUserPhoto,
    required TResult orElse(),
  }) {
    if (updateUserPhoto != null) {
      return updateUserPhoto(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChoosePhotoFromGallery value)
        choosePhotoFromGallery,
    required TResult Function(ChoosePhotoFromCamera value)
        choosePhotoFromCamera,
    required TResult Function(UpdateUserPhoto value) updateUserPhoto,
  }) {
    return updateUserPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChoosePhotoFromGallery value)? choosePhotoFromGallery,
    TResult Function(ChoosePhotoFromCamera value)? choosePhotoFromCamera,
    TResult Function(UpdateUserPhoto value)? updateUserPhoto,
    required TResult orElse(),
  }) {
    if (updateUserPhoto != null) {
      return updateUserPhoto(this);
    }
    return orElse();
  }
}

abstract class UpdateUserPhoto implements UpdateProfilePhotoEvent {
  const factory UpdateUserPhoto(File photo) = _$UpdateUserPhoto;

  File get photo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserPhotoCopyWith<UpdateUserPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}
