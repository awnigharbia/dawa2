import 'package:cloud_firestore/cloud_firestore.dart';

import '../clinic_api.dart';

class DoctorApiClient {
  final FirebaseFirestore? _firebaseFirestore;
  CollectionReference? _doctorCollection;

  DoctorApiClient({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance {
    _doctorCollection = _firebaseFirestore!.collection("doctors");
  }

  Future<Doctor?> getDoctoryByClinicId(String clinicId) async {
    final snapshot = await _doctorCollection!
        .where('clinic_id', isEqualTo: clinicId)
        .limit(1)
        .get();

    if (snapshot.docs.isEmpty) return Doctor.empty();

    return snapshot.docs.map(_mapDoctor).first;
  }

  Doctor _mapDoctor(doctor) => Doctor.fromJson(doctor.id, doctor.data());
}
