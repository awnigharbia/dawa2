import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';

main() {
  group('ViewallTopratedClinicState', () {
    final clinics = BuiltList<Clinic>();

    group('Iinitial', () {
      test('support value comparisons', () {
        expect(ViewallTopratedClinicState.initial(),
            ViewallTopratedClinicState.initial());
      });
    });

    group('loadSuccess', () {
      test('support value comparisons', () {
        expect(ViewallTopratedClinicState.loadSuccess(clinics: clinics),
            ViewallTopratedClinicState.loadSuccess(clinics: clinics));
      });
    });

    group('loadFailure', () {
      test('support value comparisons', () {
        expect(ViewallTopratedClinicState.loadFailure(),
            ViewallTopratedClinicState.loadFailure());
      });
    });
  });
}
