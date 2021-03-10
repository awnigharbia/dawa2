import 'package:category_api/category_api.dart';
import 'package:clinic_api/clinic_api.dart';

class HomeRepository {
  HomeRepository({
    ClinicApiClient? clinicApiClient,
    CategoryApiClient? categoryApiClient,
  })  : _clinicApiClient = clinicApiClient ?? ClinicApiClient(),
        _categoryApiClient = categoryApiClient ?? CategoryApiClient();

  static const _defaultLimit = 10;

  final ClinicApiClient _clinicApiClient;
  final CategoryApiClient _categoryApiClient;

  Future<List<Clinic>> getNearbyClinics({int limit = _defaultLimit}) async {
    final clinicsData =
        await _clinicApiClient.getNearbyClinics(limit: _defaultLimit);

    final clinics = await _mapClinicCategory(clinicsData);

    return clinics;
  }

  Future<List<Clinic>> _mapClinicCategory(List<Clinic> clinics) async {
    List<Clinic> clinicList = [];

    for (var clinic in clinics) {
      final category =
          await _categoryApiClient.getCategoryById(clinic.category!);

      final updatedClinic = clinic..category = category.name;

      clinicList.add(updatedClinic);
    }

    return clinicList;
  }
}
