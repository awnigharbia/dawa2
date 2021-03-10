import 'package:clinic_api/clinic_api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';

class ViewAllRepository {
  ViewAllRepository({
    ClinicApiClient? clinicApiClient,
  }) : _clinicApiClient = clinicApiClient ?? ClinicApiClient();

  static const _defaultLimit = 10;

  bool get hasReachedMax => _hasReachedMax;

  final ClinicApiClient? _clinicApiClient;

  DocumentSnapshot? _lastTopRatedDocument;
  bool _hasReachedMax = false;

  Future<List<Clinic>> getTopRatedClinics({bool isReset = false}) async {
    if (isReset) {
      _lastTopRatedDocument = null;
      _hasReachedMax = false;
    }

    if (_hasReachedMax) return [];

    final clinicData = await _clinicApiClient!
        .getTopRatedClinics(_lastTopRatedDocument, _defaultLimit);

    if (clinicData.clinics!.length < _defaultLimit) _hasReachedMax = true;

    if (clinicData.clinics!.isNotEmpty)
      _lastTopRatedDocument = clinicData.lastDocument!;

    return clinicData.clinics!;
  }
}
