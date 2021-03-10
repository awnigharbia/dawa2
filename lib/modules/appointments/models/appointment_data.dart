import 'package:appointments_api/appointments_api.dart';
import 'package:clinic_api/clinic_api.dart' as clinic_api;

class AppointmentData {
  final Appointment? appointment;
  final clinic_api.Clinic? clinic;

  AppointmentData({
    this.appointment,
    this.clinic,
  });
}
