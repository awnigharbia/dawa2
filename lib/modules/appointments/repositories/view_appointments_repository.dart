import 'package:appointments_api/appointments_api.dart';
import 'package:clinic_api/clinic_api.dart' as clinic_api;

import '../appointments.dart';

class ViewAppointmentsRepository {
  final clinic_api.ClinicApiClient _clinicApiClient;
  final AppointmentApiClient _appointmentApiClient;

  ViewAppointmentsRepository({
    clinic_api.ClinicApiClient? clinicApiClient,
    AppointmentApiClient? appointmentApiClient,
  })  : _clinicApiClient = clinicApiClient ?? clinic_api.ClinicApiClient(),
        _appointmentApiClient = appointmentApiClient ?? AppointmentApiClient();

  Future<List<AppointmentData>> getUpcoming() async {
    final appointments = await _appointmentApiClient.getUpcomingAppointments();
    final appointmentsData = await mapAppointmentsData(appointments);

    return appointmentsData;
  }

  Future<List<AppointmentData>> getPass() async {
    final appointments = await _appointmentApiClient.getPassAppointments();
    final appointmentsData = await mapAppointmentsData(appointments);

    return appointmentsData;
  }

  Future cancelAppointment(String appointmentId) async {
    await _appointmentApiClient.cancelAppointment(appointmentId);
  }

  Future<List<AppointmentData>> mapAppointmentsData(
      List<Appointment> appointments) async {
    List<AppointmentData> appointmentList = [];

    for (var appointment in appointments) {
      final clinic = await _clinicApiClient.getClinicById(appointment.clinicId);

      appointmentList.add(AppointmentData(
        appointment: appointment,
        clinic: clinic,
      ));
    }

    return appointmentList;
  }
}
