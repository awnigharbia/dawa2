import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/home/home.dart';

main() {
  group('TopRatedClinicState', () {
    final clinics = BuiltList<Clinic>();
    group('Initial', () {
      test('supports value comparisons', () {
        expect(TopRatedClinicState.initial(), TopRatedClinicState.initial());
      });
    });

    group('loadSuccess', () {
      test('supports value comparisons', () {
        expect(TopRatedClinicState.loadSuccess(clinics: clinics),
            TopRatedClinicState.loadSuccess(clinics: clinics));
      });
    });

    group('loadFailure', () {
      test('supports value comparisons', () {
        expect(TopRatedClinicState.loadFailure(),
            TopRatedClinicState.loadFailure());
      });
    });
  });
}
