// @dart=2.9
import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:category_api/category_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/category/bloc/bloc.dart';
import 'package:dawa2/modules/category/repositories/category_repository.dart';
import 'package:mockito/mockito.dart';

class MockCategoryRepository extends Mock implements CategoryRepository {}

main() {
  group('CategoryBloc', () {
    final categories = BuiltList<Category>();
    CategoryRepository categoryRepository;

    setUp(() {
      categoryRepository = MockCategoryRepository();
    });

    test('throw AssertionError when categoryRepository is null', () {
      expect(
          () => CategoryBloc(categoryRepository: null), throwsAssertionError);
    });

    test('initial state is CategoryInitial', () {
      expect(CategoryBloc(categoryRepository: categoryRepository).state,
          CategoryState.initial());
    });

    group('LoadStarted', () {
      setUp(() async {
        when(categoryRepository.getCategories()).thenAnswer((_) async => []);
      });

      blocTest<CategoryBloc, CategoryState>(
        'emit [initial, loadSuccess] when load category success',
        build: () => CategoryBloc(categoryRepository: categoryRepository),
        act: (bloc) => bloc.add(CategoryEvent.loadStarted()),
        expect: () => <CategoryState>[
          CategoryState.initial(),
          CategoryState.loadSuccess(categories: categories),
        ],
      );

      blocTest<CategoryBloc, CategoryState>(
        'emit [loadSuccess] when load category success with isRefresh true',
        build: () => CategoryBloc(categoryRepository: categoryRepository),
        act: (bloc) => bloc.add(CategoryEvent.loadStarted(isRefresh: true)),
        expect: () => <CategoryState>[
          CategoryState.loadSuccess(categories: categories),
        ],
      );

      blocTest<CategoryBloc, CategoryState>(
        'emit [initial, loadFailure] when load category failure',
        build: () {
          when(categoryRepository.getCategories())
              .thenThrow((_) => Exception("Oops"));
          return CategoryBloc(categoryRepository: categoryRepository);
        },
        act: (bloc) => bloc.add(CategoryEvent.loadStarted()),
        expect: () => <CategoryState>[
          CategoryState.initial(),
          CategoryState.loadFailure(),
        ],
      );

      blocTest<CategoryBloc, CategoryState>(
        'emit [loadFailure] when load category failure with isRefresh true',
        build: () {
          when(categoryRepository.getCategories())
              .thenThrow((_) => Exception("Oops"));
          return CategoryBloc(categoryRepository: categoryRepository);
        },
        act: (bloc) => bloc.add(CategoryEvent.loadStarted(isRefresh: true)),
        expect: () => <CategoryState>[
          CategoryState.loadFailure(),
        ],
      );
    });
  });
}
