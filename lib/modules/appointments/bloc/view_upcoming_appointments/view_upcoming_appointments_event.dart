part of 'view_upcoming_appointments_bloc.dart';

@freezed
abstract class ViewUpcomingAppointmentsEvent
    with _$ViewUpcomingAppointmentsEvent {
  const factory ViewUpcomingAppointmentsEvent.loadStarted({
    @Default(false) bool isRefresh,
  }) = _LoadStarted;

  const factory ViewUpcomingAppointmentsEvent.cancelAppointment({
    String? appointmentId,
  }) = _CancelAppointment;
}
