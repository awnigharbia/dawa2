part of 'nearby_clinic_bloc.dart';

@freezed
abstract class NearbyclinicEvent with _$NearbyclinicEvent {
  const factory NearbyclinicEvent.initialLoadStarted() =
      _NearbyClinicInitialLoadStarted;
  const factory NearbyclinicEvent.loadStarted({
    @Default(false) bool isRefresh,
  }) = _NearbyClinicLoadStarted;
}
