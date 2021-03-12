import 'package:built_collection/built_collection.dart';
import 'package:category_api/category_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/category/category.dart';

main() {
  group('CategoryState', () {
    final categories = BuiltList<Category>();
    group('Initial', () {
      test('support value comparisons', () {
        expect(CategoryState.initial(), CategoryState.initial());
      });
    });

    group('loadSuccess', () {
      test('support value comparisons', () {
        expect(CategoryState.loadSuccess(categories: categories),
            CategoryState.loadSuccess(categories: categories));
      });
    });

    group('loadFailure', () {
      test('support value comparisons', () {
        expect(CategoryState.loadFailure(), CategoryState.loadFailure());
      });
    });
  });
}
