// @dart=2.9
import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/category/bloc/bloc.dart';
import 'package:dawa2/modules/category/category.dart';
import 'package:mockito/mockito.dart';

class MockCategoryRepository extends Mock implements CategoryRepository {}

main() {
  group('CategoryDetailBloc', () {
    String validCategoryId = 'abc';
    int fetchLimit = 10;
    CategoryRepository categoryRepository;

    setUp(() {
      categoryRepository = MockCategoryRepository();
    });

    test('throw AssertionError when clinicRepository is null', () {
      expect(
          () => CategoryDetailBloc(validCategoryId, categoryRepository: null),
          throwsAssertionError);
    });
    test('initial state is CategoryDetailInitial', () {
      expect(
          CategoryDetailBloc(validCategoryId,
                  categoryRepository: categoryRepository)
              .state,
          CategoryDetailState.initial());
    });

    group('loadStarted', () {
      final clinics = BuiltList<Clinic>();
      final moreClinics = [Clinic(), Clinic()];

      setUp(() async {
        when(categoryRepository.getClinicsByCategory(
                validCategoryId, fetchLimit))
            .thenAnswer((_) async => []);
      });

      blocTest<CategoryDetailBloc, CategoryDetailState>(
          'emit [loadSucces] when initial load success',
          build: () => CategoryDetailBloc(validCategoryId,
              categoryRepository: categoryRepository),
          act: (bloc) => bloc.add(CategoryDetailEvent.loadStarted()),
          expect: () => <CategoryDetailState>[
                CategoryDetailState.loadSuccess(
                    clinics: clinics,
                    hasReachedMax: categoryRepository.hasReachedMax),
              ]);

      blocTest<CategoryDetailBloc, CategoryDetailState>(
          'emit [loadSucces(hasReachedMax:false)] when loadMore success',
          build: () {
            when(categoryRepository.getClinicsByCategory(
                    validCategoryId, fetchLimit))
                .thenAnswer((_) async => moreClinics);

            return CategoryDetailBloc(validCategoryId,
                categoryRepository: categoryRepository);
          },
          act: (bloc) => bloc.add(CategoryDetailEvent.loadStarted()),
          seed: () => CategoryDetailState.loadSuccess(
              clinics: clinics, hasReachedMax: false),
          expect: () => <CategoryDetailState>[
                CategoryDetailState.loadSuccess(
                    clinics: moreClinics.build(),
                    hasReachedMax: categoryRepository.hasReachedMax),
              ]);

      blocTest<CategoryDetailBloc, CategoryDetailState>(
          'emit [loadSucces(hasReachedMax:true)] when loadMore success',
          build: () => CategoryDetailBloc(validCategoryId,
              categoryRepository: categoryRepository),
          act: (bloc) => bloc.add(CategoryDetailEvent.loadStarted()),
          seed: () => CategoryDetailState.loadSuccess(
              clinics: clinics, hasReachedMax: false),
          expect: () => <CategoryDetailState>[
                CategoryDetailState.loadSuccess(
                    clinics: clinics, hasReachedMax: true),
              ]);

      blocTest<CategoryDetailBloc, CategoryDetailState>(
          'emit [loadSucces] when loadRefresh success',
          build: () {
            when(categoryRepository.getClinicsByCategory(
                    validCategoryId, fetchLimit,
                    isReset: true))
                .thenAnswer((_) async => []);

            return CategoryDetailBloc(validCategoryId,
                categoryRepository: categoryRepository);
          },
          act: (bloc) =>
              bloc.add(CategoryDetailEvent.loadStarted(isRefresh: true)),
          expect: () => <CategoryDetailState>[
                CategoryDetailState.loadSuccess(
                    clinics: clinics,
                    hasReachedMax: categoryRepository.hasReachedMax),
              ]);

      blocTest<CategoryDetailBloc, CategoryDetailState>(
        'emit nothing when loadMore hasReachedMax true',
        build: () => CategoryDetailBloc(validCategoryId,
            categoryRepository: categoryRepository),
        act: (bloc) => bloc.add(CategoryDetailEvent.loadStarted()),
        seed: () => CategoryDetailState.loadSuccess(
            clinics: clinics, hasReachedMax: true),
        expect: () => <CategoryDetailState>[],
      );

      blocTest<CategoryDetailBloc, CategoryDetailState>(
        'emit [loadFailure] when initial load failure',
        build: () {
          when(categoryRepository.getClinicsByCategory(
                  validCategoryId, fetchLimit))
              .thenThrow((_) => Exception("Oops"));
          return CategoryDetailBloc(validCategoryId,
              categoryRepository: categoryRepository);
        },
        act: (bloc) => bloc.add(CategoryDetailEvent.loadStarted()),
        seed: () => CategoryDetailState.initial(),
        expect: () => <CategoryDetailState>[
          CategoryDetailState.loadFailure(),
        ],
      );

      blocTest<CategoryDetailBloc, CategoryDetailState>(
        'emit [loadFailure] when loadMore failure',
        build: () {
          when(categoryRepository.getClinicsByCategory(
                  validCategoryId, fetchLimit))
              .thenThrow((_) => Exception("Oops"));
          return CategoryDetailBloc(validCategoryId,
              categoryRepository: categoryRepository);
        },
        act: (bloc) => bloc.add(CategoryDetailEvent.loadStarted()),
        seed: () => CategoryDetailState.loadSuccess(
            clinics: moreClinics.build(), hasReachedMax: false),
        expect: () => <CategoryDetailState>[
          CategoryDetailState.loadFailure(),
        ],
      );

      blocTest<CategoryDetailBloc, CategoryDetailState>(
        'emit [loadFailure] when Refreshload failure',
        build: () {
          when(categoryRepository.getClinicsByCategory(
                  validCategoryId, fetchLimit))
              .thenThrow((_) => Exception("Oops"));
          return CategoryDetailBloc(validCategoryId,
              categoryRepository: categoryRepository);
        },
        act: (bloc) =>
            bloc.add(CategoryDetailEvent.loadStarted(isRefresh: true)),
        seed: () => CategoryDetailState.loadSuccess(clinics: clinics),
        expect: () => <CategoryDetailState>[
          CategoryDetailState.loadFailure(),
        ],
      );
    });
  });
}
