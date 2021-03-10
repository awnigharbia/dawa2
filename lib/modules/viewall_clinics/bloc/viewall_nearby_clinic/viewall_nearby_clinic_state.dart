part of 'viewall_nearby_clinic_bloc.dart';

@freezed
abstract class ViewallNearbyClinicState with _$ViewallNearbyClinicState {
  const factory ViewallNearbyClinicState.initial() =
      _ViewallNearbyClinicInitial;
  const factory ViewallNearbyClinicState.loadSuccess({
    BuiltList<Clinic>? clinics,
  }) = _ViewallNearbyClinicLoadSuccess;
  const factory ViewallNearbyClinicState.loadFailure() =
      _ViewallNearbyClinicLoadFailure;
}
