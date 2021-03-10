part of 'viewall_nearby_clinic_bloc.dart';

@freezed
abstract class ViewallNearbyClinicEvent with _$ViewallNearbyClinicEvent {
  const factory ViewallNearbyClinicEvent.loadStarted({
    @Default(false) bool isRefresh,
  }) = _LoadStarted;
}
