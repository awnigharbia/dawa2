part of 'clinic_services_bloc.dart';

@freezed
abstract class ClinicServicesEvent with _$ClinicServicesEvent {
  const factory ClinicServicesEvent.loadStarted({
    List<String>? servicesIdList,
    @Default(false) bool isRefresh,
  }) = _LoadStarted;
}
