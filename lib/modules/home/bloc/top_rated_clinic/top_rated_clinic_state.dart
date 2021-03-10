part of 'top_rated_clinic_bloc.dart';

@freezed
abstract class TopRatedClinicState with _$TopRatedClinicState {
  const factory TopRatedClinicState.initial() = _TopRatedClinicInitial;
  const factory TopRatedClinicState.loadSuccess({
    BuiltList<Clinic>? clinics,
  }) = _TopRatedClinicLoadSuccess;
  const factory TopRatedClinicState.loadFailure() = _TopRatedClinicLoadFailure;
}
