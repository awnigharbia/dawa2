part of 'view_pass_appointments_bloc.dart';

@freezed
abstract class ViewPassAppointmentsEvent with _$ViewPassAppointmentsEvent {
  const factory ViewPassAppointmentsEvent.loadStarted({
    @Default(false) bool isRefresh,
  }) = _LoadStarted;
}
