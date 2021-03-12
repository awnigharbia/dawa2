import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/category/category.dart';

main() {
  group('CategoryDetailEvent', () {
    group('LoadStarted', () {
      test('support value comparison', () {
        expect(CategoryDetailEvent.loadStarted(),
            CategoryDetailEvent.loadStarted());
      });
    });
  });
}
