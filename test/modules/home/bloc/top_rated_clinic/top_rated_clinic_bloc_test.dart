// @dart=2.9
import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/home/bloc/bloc.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';
import 'package:mockito/mockito.dart';

class MockViewAllRepository extends Mock implements ViewAllRepository {}

main() {
  group('TopRatedClinicBloc', () {
    MockViewAllRepository clinicRepository;

    setUp(() {
      clinicRepository = MockViewAllRepository();
    });

    test('throws AssertionError when clinicRepository is null', () {
      expect(
        () => TopRatedClinicBloc(
          viewallRepository: null,
        ),
        throwsAssertionError,
      );
    });

    test('initial state is TopRatedClinicInitialState ', () {
      expect(
          TopRatedClinicBloc(
            viewallRepository: clinicRepository,
          ).state,
          TopRatedClinicState.initial());
    });

    group('initialLoadStarted', () {
      final clinics = BuiltList<Clinic>();

      setUp(() async {
        when(clinicRepository.getTopRatedClinics()).thenAnswer((_) async => []);
      });

      blocTest<TopRatedClinicBloc, TopRatedClinicState>(
          'emit [initial, loadSuccess] when top rated clinics load success',
          build: () => TopRatedClinicBloc(viewallRepository: clinicRepository),
          act: (bloc) => bloc.add(TopRatedClinicEvent.initialLoadStarted()),
          expect: () => <TopRatedClinicState>[
                TopRatedClinicState.initial(),
                TopRatedClinicState.loadSuccess(clinics: clinics),
              ]);

      blocTest<TopRatedClinicBloc, TopRatedClinicState>(
          'emit [initial, loadFailure] when top rated clinics load failure',
          build: () {
            when(clinicRepository.getTopRatedClinics())
                .thenThrow(Exception("Oops"));
            return TopRatedClinicBloc(viewallRepository: clinicRepository);
          },
          act: (bloc) => bloc.add(TopRatedClinicEvent.initialLoadStarted()),
          expect: () => <TopRatedClinicState>[
                TopRatedClinicState.initial(),
                TopRatedClinicState.loadFailure(),
              ]);

      blocTest<TopRatedClinicBloc, TopRatedClinicState>(
          'emit [loadSuccess] when top rated clinics load success when isRefresh true',
          build: () => TopRatedClinicBloc(viewallRepository: clinicRepository),
          act: (bloc) =>
              bloc.add(TopRatedClinicEvent.loadStarted(isRefresh: true)),
          expect: () => <TopRatedClinicState>[
                TopRatedClinicState.loadSuccess(clinics: clinics),
              ]);

      blocTest<TopRatedClinicBloc, TopRatedClinicState>(
          'emit [loadFailure] when top rated clinics load failure when isRefresh true',
          build: () {
            when(clinicRepository.getTopRatedClinics())
                .thenThrow(Exception("Oops"));

            return TopRatedClinicBloc(viewallRepository: clinicRepository);
          },
          act: (bloc) =>
              bloc.add(TopRatedClinicEvent.loadStarted(isRefresh: true)),
          expect: () => <TopRatedClinicState>[
                TopRatedClinicState.loadFailure(),
              ]);
    });
  });
}
