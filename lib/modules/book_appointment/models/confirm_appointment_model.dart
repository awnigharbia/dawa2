import 'package:clinic_api/clinic_api.dart';
import 'package:flutter/material.dart';

class ConfirmAppointmentDetail {
  final Clinic? clinic;
  final DateTime? appointmentDate;
  final TimeOfDay? appointmentTime;
  final ClinicService? service;
  final String? userId;

  ConfirmAppointmentDetail({
    this.clinic,
    this.appointmentDate,
    this.appointmentTime,
    this.service,
    this.userId,
  });
}
