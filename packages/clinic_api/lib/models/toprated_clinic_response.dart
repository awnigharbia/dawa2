import 'package:cloud_firestore/cloud_firestore.dart';

import 'clinic.dart';

class TopRatedClinicResponse {
  final List<Clinic>? clinics;
  final DocumentSnapshot? lastDocument;

  TopRatedClinicResponse({
    this.clinics,
    this.lastDocument,
  });
}
