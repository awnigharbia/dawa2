import 'package:appointments_api/appointments_api.dart';

import '../book_appointment.dart';

class BookAppointmentRepository {
  BookAppointmentRepository({
    AppointmentApiClient? bookAppointmentApiClient,
  }) : _bookAppointmentApiClient =
            bookAppointmentApiClient ?? AppointmentApiClient();

  final AppointmentApiClient _bookAppointmentApiClient;

  Future addAppointment(ConfirmAppointmentDetail confirmAppointment) async {
    var appointmentDate = confirmAppointment.appointmentDate;
    var appointmentTime = confirmAppointment.appointmentTime;

    var date = DateTime(appointmentDate!.year, appointmentDate.month,
        appointmentDate.day, appointmentTime!.hour);

    final appointment = Appointment(
      clinicId: confirmAppointment.clinic!.id,
      appointmentDate: date,
      serviceId: confirmAppointment.service!.id,
      active: true,
    );

    await _bookAppointmentApiClient.addAppointment(appointment);
  }
}
