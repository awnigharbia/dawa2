import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/models.dart';

class SettingsApiClient {
  FirebaseFirestore _firebaseFirestore;
  CollectionReference _clinicJoinCollection;
  CollectionReference _feedbackCollection;

  SettingsApiClient({
    FirebaseFirestore firebaseFirestore,
  }) : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance {
    _clinicJoinCollection = _firebaseFirestore.collection("clinicJoin");
    _feedbackCollection = _firebaseFirestore.collection("feedback");
  }

  Future joinClinic(ClinicJoin clinicJoin) async {
    await _clinicJoinCollection.add(clinicJoin.toJson());
  }

  Future sendFeedback(Feedback feedback) async {
    await _feedbackCollection.add(feedback.toJson());
  }
}
