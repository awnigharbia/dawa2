part of 'viewall_toprated_clinic_bloc.dart';

@freezed
abstract class ViewallTopratedClinicState with _$ViewallTopratedClinicState {
  const factory ViewallTopratedClinicState.initial() = _ViewAllTopRatedInitial;
  const factory ViewallTopratedClinicState.loadSuccess({
    BuiltList<Clinic>? clinics,
    @Default(false) bool hasReachedMax,
  }) = _ViewAllTopRatedLoadSuccess;
  const factory ViewallTopratedClinicState.loadFailure() =
      _ViewAllTopRatedLoadFailure;
}
