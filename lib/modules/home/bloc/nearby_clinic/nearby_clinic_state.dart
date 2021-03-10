part of 'nearby_clinic_bloc.dart';

@freezed
abstract class NearbyclinicState with _$NearbyclinicState {
  const factory NearbyclinicState.initial() = _NearbyClinicInitial;
  const factory NearbyclinicState.loadSuccess({
    BuiltList<Clinic>? clinics,
  }) = _NearbyClinicLoadSuccess;
  const factory NearbyclinicState.loadFailure() = _NearbyClinicLoadFailure;
}
