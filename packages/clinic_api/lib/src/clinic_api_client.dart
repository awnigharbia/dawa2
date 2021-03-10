import 'package:category_api/category_api.dart' as category_api;
import 'package:clinic_api/models/models.dart';
import 'package:clinic_api/util/location_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

import '../clinic_api.dart';

class ClinicApiClient {
  final FirebaseFirestore? _firebaseFirestore;
  final Geoflutterfire? _geoflutterfire;

  GeoFirePoint? center;
  double? radius = 5.0;
  CollectionReference? _clinicCollection;

  ClinicApiClient({
    CenterPoint? centerPoint,
    FirebaseFirestore? firebaseFirestore,
    Geoflutterfire? geoflutterfire,
    LocationServices? locationServices,
    category_api.CategoryApiClient? categoryRepository,
  })  : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance,
        _geoflutterfire = geoflutterfire ?? Geoflutterfire() {
    _clinicCollection = _firebaseFirestore!.collection("clinics");

    center = GeoFirePoint(centerPoint?.latitude, centerPoint?.longitude);
  }

  Future<List<Clinic>> getNearbyClinics({int limit = 10}) async {
    List<DistanceDocSnapshot> snapshot = await _geoflutterfire!
        .collection(collectionRef: _clinicCollection)
        .within(center: center, radius: radius, field: 'position', limit: limit)
        .first;

    final clinicsData = snapshot.map(_mapNearbyClinics).toList();

    return clinicsData;
  }

  Future<TopRatedClinicResponse> getTopRatedClinics(
    DocumentSnapshot? startAt,
    int limit,
  ) async {
    QuerySnapshot snapshot;

    if (startAt != null) {
      snapshot = await _clinicCollection!
          .orderBy('rate', descending: true)
          .startAtDocument(startAt)
          .limit(limit)
          .get();
    } else {
      snapshot = await _clinicCollection!
          .orderBy('rate', descending: true)
          .limit(limit)
          .get();
    }

    final topRatedClinics = snapshot.docs.map(_mapClinicData).toList();

    return TopRatedClinicResponse(
        clinics: topRatedClinics, lastDocument: snapshot.docs.last);
  }

  Future<Clinic> getClinicById(String id) async {
    final clinicData = await _clinicCollection!.doc(id).get();

    return Clinic.fromJson(clinicData.id, 0.0, clinicData.data()!);
  }

  Clinic _mapNearbyClinics(clinic) {
    final clinicData = Clinic.fromJson(clinic.documentSnapshot.id,
        clinic.distance, clinic.documentSnapshot.data());

    bool isClinicOpen = isOpen(clinicData.openTime!, clinicData.closeTime!);

    return clinicData..isOpen = isClinicOpen;
  }

  Clinic _mapClinicData(clinic) {
    final position = clinic.data()['position']['geopoint'];
    final distance = getDistance(position);
    final clinicData = Clinic.fromJson(clinic.id, distance, clinic.data());

    bool isClinicOpen = isOpen(clinicData.openTime!, clinicData.closeTime!);

    return clinicData..isOpen = isClinicOpen;
  }

  double getDistance(GeoPoint point) {
    final distance =
        center!.distance(lat: point.latitude, lng: point.longitude);
    return distance;
  }

  bool isOpen(DateTime startTime, DateTime closeTime) {
    DateTime now = DateTime.now();

    return now.isAfter(startTime) && now.isBefore(closeTime);
  }
}
