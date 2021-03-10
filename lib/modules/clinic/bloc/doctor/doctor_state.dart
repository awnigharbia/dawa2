part of 'doctor_bloc.dart';

@freezed
abstract class DoctorState with _$DoctorState {
  const factory DoctorState.initial() = _DoctorInitial;
  const factory DoctorState.loadSuccess({
    Doctor? doctor,
  }) = DoctorLoadSuccess;
  const factory DoctorState.loadFailure() = _DoctorLoadFailure;
}
