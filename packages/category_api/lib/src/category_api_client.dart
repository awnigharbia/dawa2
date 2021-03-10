import 'package:clinic_api/clinic_api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../category_api.dart';
import '../model/models.dart';

class CategoryApiClient {
  final FirebaseFirestore? _firebaseFirestore;
  CollectionReference? _clinicCollection;
  CollectionReference? _categoryCollection;
  ClinicApiClient? clinicApiClient;

  CategoryApiClient({
    CenterPoint? center,
    FirebaseFirestore? firebaseFirestore,
  }) : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance {
    _categoryCollection = _firebaseFirestore!.collection("categories");
    _clinicCollection = _firebaseFirestore!.collection("clinics");
    clinicApiClient = ClinicApiClient(
        centerPoint: CenterPoint(center!.latitude, center.longitude));
  }

  Future<CategoryResponse> getClinicsByCategory(
      String? categoryID, DocumentSnapshot? startAt,
      {int limit = 10}) async {
    QuerySnapshot snapshot;

    if (startAt != null) {
      snapshot = await _clinicCollection!
          .where('category', isEqualTo: categoryID)
          .startAfterDocument(startAt)
          .limit(limit)
          .get();
    } else {
      snapshot = await _clinicCollection!
          .where('category', isEqualTo: categoryID)
          .limit(limit)
          .get();
    }

    final clinics = snapshot.docs.map(_mapClinicData).toList();

    return CategoryResponse(
      clinics: clinics,
      lastDocument: snapshot.docs.last,
    );
  }

  Future<Category> getCategoryById(String id) async {
    final categoryData = await _categoryCollection!.doc(id).get();
    final category = categoryData.data();

    return Category.fromJson(categoryData.id, category!);
  }

  Future<List<Category>> getCategories() async {
    final snapshot = await _categoryCollection!.get();
    final categories = snapshot.docs;

    return categories.map(_mapCategoriesData).toList();
  }

  Category _mapCategoriesData(category) =>
      Category.fromJson(category.id, category.data());

  Clinic _mapClinicData(clinic) {
    final position = clinic.data()['position']['geopoint'];
    final distance = clinicApiClient!.getDistance(position);
    final clinicData = Clinic.fromJson(clinic.id, distance, clinic.data());

    bool isClinicOpen =
        clinicApiClient!.isOpen(clinicData.openTime!, clinicData.closeTime!);

    return clinicData..isOpen = isClinicOpen;
  }
}
