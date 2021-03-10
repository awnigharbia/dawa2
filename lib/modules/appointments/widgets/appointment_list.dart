import 'package:flutter/material.dart';

import '../appointments.dart';

class AppointmentListView extends StatelessWidget {
  final List<AppointmentData>? appointments;
  final bool? isPassed;
  const AppointmentListView({
    Key? key,
    this.appointments,
    this.isPassed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: appointments!
          .map((appointment) => AppointmentListItem(
              appointmentData: appointment, isPassed: isPassed))
          .toList(),
    );
  }
}
