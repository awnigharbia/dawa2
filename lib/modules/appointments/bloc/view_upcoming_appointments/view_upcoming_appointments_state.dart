part of 'view_upcoming_appointments_bloc.dart';

@freezed
abstract class ViewUpcomingAppointmentsState
    with _$ViewUpcomingAppointmentsState {
  const factory ViewUpcomingAppointmentsState.initial() =
      _ViewUpcomingAppointmentsInitial;
  const factory ViewUpcomingAppointmentsState.loadSuccess({
    BuiltList<AppointmentData>? appointmentsData,
  }) = _ViewUpcomingAppointmentsLoadSuccess;
  const factory ViewUpcomingAppointmentsState.loadFailure() =
      _ViewUpcomingAppointmentsLoadFailure;
}
