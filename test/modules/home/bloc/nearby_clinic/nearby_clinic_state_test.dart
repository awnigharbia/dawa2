import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/home/home.dart';

main() {
  group('NearbyClinicState', () {
    final clinics = BuiltList<Clinic>();

    group('NearbyClinicState.initial', () {
      test('supports value comparisons', () {
        expect(NearbyclinicState.initial(), NearbyclinicState.initial());
      });
    });

    group('NearbyClinicState.loadSuccess', () {
      test('supports value comparisons', () {
        expect(NearbyclinicState.loadSuccess(clinics: clinics),
            NearbyclinicState.loadSuccess(clinics: clinics));
      });
    });

    group('NearbyClinicState.loadFailure', () {
      test('supports value comparisons', () {
        expect(
            NearbyclinicState.loadFailure(), NearbyclinicState.loadFailure());
      });
    });
  });
}
