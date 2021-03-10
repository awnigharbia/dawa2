import 'package:clinic_api/clinic_api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryResponse {
  final List<Clinic>? clinics;
  final DocumentSnapshot? lastDocument;

  CategoryResponse({
    this.clinics,
    this.lastDocument,
  });
}
