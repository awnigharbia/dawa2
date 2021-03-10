import 'package:clinic_api/clinic_api.dart';

class ViewallTopratedClinicsResponse {
  final List<Clinic>? clinics;
  final bool? hasReachedMax;

  ViewallTopratedClinicsResponse({
    this.clinics,
    this.hasReachedMax,
  });
}
