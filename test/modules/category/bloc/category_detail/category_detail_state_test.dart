import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/category/category.dart';

main() {
  group('CategoryDetailState', () {
    final clinics = BuiltList<Clinic>();
    group('Initial', () {
      test('supports value comparison', () {
        expect(CategoryDetailState.initial(), CategoryDetailState.initial());
      });
    });

    group('loadSuccess', () {
      test('supports value comparison', () {
        expect(CategoryDetailState.loadSuccess(clinics: clinics),
            CategoryDetailState.loadSuccess(clinics: clinics));
      });
    });

    group('loadFailure', () {
      test('supports value comparison', () {
        expect(CategoryDetailState.loadFailure(),
            CategoryDetailState.loadFailure());
      });
    });
  });
}
