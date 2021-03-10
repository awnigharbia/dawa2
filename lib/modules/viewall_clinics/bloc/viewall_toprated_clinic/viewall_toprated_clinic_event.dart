part of 'viewall_toprated_clinic_bloc.dart';

@freezed
abstract class ViewallTopratedClinicEvent with _$ViewallTopratedClinicEvent {
  const factory ViewallTopratedClinicEvent.loadStarted({
    @Default(false) bool isRefresh,
  }) = _LoadStarted;
}
