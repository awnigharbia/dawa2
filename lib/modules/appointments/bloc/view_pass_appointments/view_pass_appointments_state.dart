part of 'view_pass_appointments_bloc.dart';

@freezed
abstract class ViewPassAppointmentsState with _$ViewPassAppointmentsState {
  const factory ViewPassAppointmentsState.initial() =
      _ViewPassAppointmentsInitial;
  const factory ViewPassAppointmentsState.loadSuccess({
    BuiltList<AppointmentData>? appointmentsData,
  }) = _ViewPassAppointmentsLoadSuccess;
  const factory ViewPassAppointmentsState.loadFailure() =
      _ViewPassAppointmentsLoadFailure;
}
