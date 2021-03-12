import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';

main() {
  final clinics = BuiltList<Clinic>();
  group('ViewallNearbyClinicState', () {
    group('initial', () {
      test('support value comparisons', () {
        expect(ViewallNearbyClinicState.initial(),
            ViewallNearbyClinicState.initial());
      });
    });

    group('loadSuccess', () {
      test('support value comparisons', () {
        expect(ViewallNearbyClinicState.loadSuccess(clinics: clinics),
            ViewallNearbyClinicState.loadSuccess(clinics: clinics));
      });
    });

    group('loadFailure', () {
      test('support value comparisons', () {
        expect(ViewallNearbyClinicState.loadFailure(),
            ViewallNearbyClinicState.loadFailure());
      });
    });
  });
}
