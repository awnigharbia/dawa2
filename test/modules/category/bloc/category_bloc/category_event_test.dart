import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/category/category.dart';

main() {
  group('CategoryEvent', () {
    group('LoadStarted', () {
      test('support value comparison', () {
        expect(CategoryEvent.loadStarted(), CategoryEvent.loadStarted());
      });
    });
  });
}
