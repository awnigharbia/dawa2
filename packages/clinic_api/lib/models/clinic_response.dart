import 'clinic.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ClinicResponse {
  final List<Clinic>? clinics;
  final DocumentSnapshot? lastDocument;

  ClinicResponse({
    this.clinics,
    this.lastDocument,
  });
}
