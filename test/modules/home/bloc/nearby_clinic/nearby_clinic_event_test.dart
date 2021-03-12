import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/home/home.dart';

main() {
  group('NearbyClinicEven', () {
    group('initialLoadStarted', () {
      test('supports value comparisons', () {
        expect(NearbyclinicEvent.initialLoadStarted(),
            NearbyclinicEvent.initialLoadStarted());
      });
    });

    group('loadStarted', () {
      test('supports value comparisons', () {
        expect(
            NearbyclinicEvent.loadStarted(), NearbyclinicEvent.loadStarted());
      });
    });
  });
}
