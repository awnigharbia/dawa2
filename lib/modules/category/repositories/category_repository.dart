import 'package:category_api/category_api.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryRepository {
  CategoryRepository(
      {CenterPoint? center, CategoryApiClient? categoryApiClient})
      : _categoryApiClient =
            categoryApiClient ?? CategoryApiClient(center: center);

  static const _defaultLimit = 10;

  final CategoryApiClient _categoryApiClient;

  DocumentSnapshot? _lastCategoryDocument;
  bool hasReachedMax = false;

  Future<List<Clinic>> getClinicsByCategory(String categoryId, int fetchLimit,
      {bool isReset = false}) async {
    if (isReset) {
      _lastCategoryDocument = null;
      hasReachedMax = false;
    }

    if (hasReachedMax) return [];

    final clinicsData = await _categoryApiClient.getClinicsByCategory(
        categoryId, _lastCategoryDocument);

    if (clinicsData.clinics!.length < _defaultLimit) {
      hasReachedMax = true;
    }

    if (clinicsData.clinics!.isNotEmpty)
      _lastCategoryDocument = clinicsData.lastDocument;

    return clinicsData.clinics!;
  }

  Future<List<Category>> getCategories() async {
    final categories = await _categoryApiClient.getCategories();

    return categories;
  }
}
