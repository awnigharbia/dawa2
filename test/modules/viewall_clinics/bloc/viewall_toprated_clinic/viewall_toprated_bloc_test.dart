// @dart=2.9
import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';
import 'package:mockito/mockito.dart';

class MockViewallRepository extends Mock implements ViewAllRepository {}

main() {
  group('ViewallTopRatedClinicsBloc', () {
    ViewAllRepository viewallRepository;

    setUp(() {
      viewallRepository = MockViewallRepository();
    });

    test('throws AssertionError when clinicRepository is null', () {
      expect(() => ViewallTopratedClinicBloc(viewallRepository: null),
          throwsAssertionError);
    });

    test('initial state is ViewallTopratedClinicInitial', () {
      expect(
          ViewallTopratedClinicBloc(viewallRepository: viewallRepository).state,
          ViewallTopratedClinicState.initial());
    });

    group('loadStarted', () {
      final clinics = BuiltList<Clinic>();
      final moreClinics = [Clinic(), Clinic()];

      setUp(() async {
        when(viewallRepository.getTopRatedClinics())
            .thenAnswer((_) async => []);
      });

      blocTest<ViewallTopratedClinicBloc, ViewallTopratedClinicState>(
          'emit [loadSucces] when initial load success',
          build: () {
            when(viewallRepository.getTopRatedClinics(isReset: true))
                .thenAnswer((_) async => []);
            return ViewallTopratedClinicBloc(
                viewallRepository: viewallRepository);
          },
          seed: () => ViewallTopratedClinicState.initial(),
          act: (bloc) => bloc.add(ViewallTopratedClinicEvent.loadStarted()),
          expect: () => <ViewallTopratedClinicState>[
                ViewallTopratedClinicState.loadSuccess(
                    clinics: clinics,
                    hasReachedMax: viewallRepository.hasReachedMax),
              ]);

      blocTest<ViewallTopratedClinicBloc, ViewallTopratedClinicState>(
          'emit [loadSucces(hasReachedMax:false)] when loadMore success',
          build: () {
            when(viewallRepository.getTopRatedClinics())
                .thenAnswer((_) async => moreClinics);

            return ViewallTopratedClinicBloc(
                viewallRepository: viewallRepository);
          },
          act: (bloc) => bloc.add(ViewallTopratedClinicEvent.loadStarted()),
          seed: () => ViewallTopratedClinicState.loadSuccess(
              clinics: clinics, hasReachedMax: false),
          expect: () => <ViewallTopratedClinicState>[
                ViewallTopratedClinicState.loadSuccess(
                    clinics: moreClinics.build(),
                    hasReachedMax: viewallRepository.hasReachedMax),
              ]);

      blocTest<ViewallTopratedClinicBloc, ViewallTopratedClinicState>(
          'emit [loadSucces(hasReachedMax:true)] when loadMore success',
          build: () =>
              ViewallTopratedClinicBloc(viewallRepository: viewallRepository),
          act: (bloc) => bloc.add(ViewallTopratedClinicEvent.loadStarted()),
          seed: () => ViewallTopratedClinicState.loadSuccess(
              clinics: clinics, hasReachedMax: false),
          expect: () => <ViewallTopratedClinicState>[
                ViewallTopratedClinicState.loadSuccess(
                    clinics: clinics, hasReachedMax: true),
              ]);

      blocTest<ViewallTopratedClinicBloc, ViewallTopratedClinicState>(
          'emit [loadSucces] when loadRefresh success',
          build: () {
            when(viewallRepository.getTopRatedClinics(isReset: true))
                .thenAnswer((_) async => []);

            return ViewallTopratedClinicBloc(
                viewallRepository: viewallRepository);
          },
          act: (bloc) =>
              bloc.add(ViewallTopratedClinicEvent.loadStarted(isRefresh: true)),
          expect: () => <ViewallTopratedClinicState>[
                ViewallTopratedClinicState.loadSuccess(
                    clinics: clinics,
                    hasReachedMax: viewallRepository.hasReachedMax),
              ]);

      blocTest<ViewallTopratedClinicBloc, ViewallTopratedClinicState>(
        'emit nothing when loadMore hasReachedMax true',
        build: () =>
            ViewallTopratedClinicBloc(viewallRepository: viewallRepository),
        act: (bloc) => bloc.add(ViewallTopratedClinicEvent.loadStarted()),
        seed: () => ViewallTopratedClinicState.loadSuccess(
            clinics: clinics, hasReachedMax: true),
        expect: () => <ViewallTopratedClinicState>[],
      );

      blocTest<ViewallTopratedClinicBloc, ViewallTopratedClinicState>(
        'emit [loadFailure] when initial load failure',
        build: () {
          when(viewallRepository.getTopRatedClinics())
              .thenThrow((_) => Exception("Oops"));
          return ViewallTopratedClinicBloc(
              viewallRepository: viewallRepository);
        },
        act: (bloc) => bloc.add(ViewallTopratedClinicEvent.loadStarted()),
        seed: () => ViewallTopratedClinicState.initial(),
        expect: () => <ViewallTopratedClinicState>[
          ViewallTopratedClinicState.loadFailure(),
        ],
      );

      blocTest<ViewallTopratedClinicBloc, ViewallTopratedClinicState>(
        'emit [loadFailure] when loadMore failure',
        build: () {
          when(viewallRepository.getTopRatedClinics())
              .thenThrow((_) => Exception("Oops"));
          return ViewallTopratedClinicBloc(
              viewallRepository: viewallRepository);
        },
        act: (bloc) => bloc.add(ViewallTopratedClinicEvent.loadStarted()),
        seed: () => ViewallTopratedClinicState.loadSuccess(
            clinics: moreClinics.build(), hasReachedMax: false),
        expect: () => <ViewallTopratedClinicState>[
          ViewallTopratedClinicState.loadFailure(),
        ],
      );

      blocTest<ViewallTopratedClinicBloc, ViewallTopratedClinicState>(
        'emit [loadFailure] when Refreshload failure',
        build: () {
          when(viewallRepository.getTopRatedClinics())
              .thenThrow((_) => Exception("Oops"));
          return ViewallTopratedClinicBloc(
              viewallRepository: viewallRepository);
        },
        act: (bloc) =>
            bloc.add(ViewallTopratedClinicEvent.loadStarted(isRefresh: true)),
        seed: () => ViewallTopratedClinicState.loadSuccess(clinics: clinics),
        expect: () => <ViewallTopratedClinicState>[
          ViewallTopratedClinicState.loadFailure(),
        ],
      );
    });
  });
}
