import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/home/home.dart';

main() {
  group('TopRatedClinicEven', () {
    group('initialLoadStarted', () {
      test('supports value comparisons', () {
        expect(TopRatedClinicEvent.initialLoadStarted(),
            TopRatedClinicEvent.initialLoadStarted());
      });
    });

    group('LoadStarted', () {
      test('supports value comparisons', () {
        expect(TopRatedClinicEvent.loadStarted(),
            TopRatedClinicEvent.loadStarted());
      });
    });
  });
}
