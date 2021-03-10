part of 'clinic_services_bloc.dart';

@freezed
abstract class ClinicServicesState with _$ClinicServicesState {
  const factory ClinicServicesState.initial() = _ClinicServicesInitial;
  const factory ClinicServicesState.loadSuccess({
    BuiltList<ClinicService>? services,
  }) = _ClinicServicesLoadSuccess;
  const factory ClinicServicesState.loadFailure() = _ClinicServicesLoadFailure;
}
