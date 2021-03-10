import 'package:clinic_api/clinic_api.dart';

class BookAppointment {
  final Clinic? clinic;
  final List<ClinicService>? services;

  BookAppointment({
    this.clinic,
    this.services,
  });
}
