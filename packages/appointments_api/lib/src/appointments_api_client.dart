import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../appointments_api.dart';

class AppointmentApiClient {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseAuth _firebaseAuth;
  CollectionReference _appointmentsCollection;

  AppointmentApiClient(
      {FirebaseFirestore firebaseFirestore, FirebaseAuth firebaseAuth})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance,
        _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance {
    _appointmentsCollection = _firebaseFirestore.collection("appointments");
  }

  Future<List<Appointment>> getUpcomingAppointments() async {
    final userId = _firebaseAuth.currentUser.uid;
    final appointments = await _appointmentsCollection
        .where("appointmentDate", isGreaterThan: Timestamp.now())
        .where("userId", isEqualTo: userId)
        .where("active", isEqualTo: true)
        .get();

    return appointments?.docs?.map(_mapAppointments)?.toList();
  }

  Future<List<Appointment>> getPassAppointments() async {
    final userId = _firebaseAuth.currentUser.uid;
    final appointments = await _appointmentsCollection
        .where("appointmentDate", isLessThan: Timestamp.now())
        .where("userId", isEqualTo: userId)
        .where("active", isEqualTo: true)
        .get();

    return appointments?.docs?.map(_mapAppointments)?.toList();
  }

  Future cancelAppointment(String appointmentId) async {
    await _appointmentsCollection.doc(appointmentId).update({"active": false});
  }

  Future addAppointment(Appointment appointment) async {
    appointment..userId = _firebaseAuth.currentUser.uid;

    await _appointmentsCollection.add(appointment.toJson());
  }

  Appointment _mapAppointments(appointment) =>
      Appointment.fromJson(appointment.id, appointment.data());
}
