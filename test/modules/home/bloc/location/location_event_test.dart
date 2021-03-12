import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/home/home.dart';

main() {
  group('LocationEvent', () {
    group('Started', () {
      test('supports value comparisons', () {
        expect(LocationEvent.started(), LocationEvent.started());
      });
    });

    group('request permission', () {
      test('support value comparisons', () {
        expect(LocationEvent.requestPermission(),
            LocationEvent.requestPermission());
      });
    });
  });
}
