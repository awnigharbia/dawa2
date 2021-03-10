part of 'doctor_bloc.dart';

@freezed
abstract class DoctorEvent with _$DoctorEvent {
  const factory DoctorEvent.loadStarted({
    @Default(false) bool isRefresh,
  }) = _LoadStarted;
}
