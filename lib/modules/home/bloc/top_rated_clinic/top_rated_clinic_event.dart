part of 'top_rated_clinic_bloc.dart';

@freezed
abstract class TopRatedClinicEvent with _$TopRatedClinicEvent {
  const factory TopRatedClinicEvent.initialLoadStarted() =
      _TopRatedClinicInitialLoadStarted;
  const factory TopRatedClinicEvent.loadStarted({
    @Default(false) bool isRefresh,
  }) = _TopRatedClinicLoadStarted;
}
