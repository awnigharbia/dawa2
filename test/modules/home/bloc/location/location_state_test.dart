import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/home/home.dart';

main() {
  group("LocationState", () {
    group('LocationState.initial', () {
      test('supports value comparisons', () {
        expect(LocationState.initial(), LocationState.initial());
      });
    });
    group('LocationState.loadSuccess', () {
      test('supports value comparisons', () {
        expect(
            LocationState.loadSuccess(0, 0), LocationState.loadSuccess(0, 0));
      });
    });

    group('LocationState.loadFailure', () {
      test('supports value comparisons', () {
        expect(LocationState.loadFailure(), LocationState.loadFailure());
      });
    });
  });
}
