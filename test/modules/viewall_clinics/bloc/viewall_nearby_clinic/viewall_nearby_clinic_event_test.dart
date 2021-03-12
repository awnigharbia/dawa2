import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/viewall_clinics/bloc/bloc.dart';

main() {
  group('ViewallNearbyClinicEvent', () {
    group('LoadStarted', () {
      test('support value comparisons', () {
        expect(ViewallNearbyClinicEvent.loadStarted(),
            ViewallNearbyClinicEvent.loadStarted());
      });
    });
  });
}
