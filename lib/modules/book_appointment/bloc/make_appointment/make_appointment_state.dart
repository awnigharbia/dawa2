part of 'make_appointment_cubit.dart';

@freezed
abstract class MakeAppointmentState with _$MakeAppointmentState {
  const factory MakeAppointmentState({
    ClinicService? service,
    DateTime? appointmentDate,
    TimeOfDay? appointmentTime,
  }) = _MakeAppointmentState;
}
