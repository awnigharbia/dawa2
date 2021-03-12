import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';

main() {
  group('ViewallTopratedClinicsEvent', () {
    group('LoadStarted', () {
      test('support value comaprisons', () {
        expect(ViewallTopratedClinicEvent.loadStarted(),
            ViewallTopratedClinicEvent.loadStarted());
      });
    });
  });
}
