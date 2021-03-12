// @dart=2.9
import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/home/home.dart';
import 'package:mockito/mockito.dart';

class MockHomeRepository extends Mock implements HomeRepository {}

main() {
  group('NearbyClinicBloc', () {
    HomeRepository homeRepository;

    setUp(() {
      homeRepository = MockHomeRepository();
    });

    test('throws AssertionError when clinicRepository is null', () {
      expect(
        () => NearbyclinicBloc(
          homeRepository: null,
        ),
        throwsAssertionError,
      );
    });

    test('initial state is NearbyClinicInitialState ', () {
      expect(
          NearbyclinicBloc(
            homeRepository: homeRepository,
          ).state,
          NearbyclinicState.initial());
    });

    group('initialLoadStarted', () {
      final clinics = BuiltList<Clinic>();

      setUp(() async {
        when(homeRepository.getNearbyClinics()).thenAnswer((_) async => []);
      });

      blocTest<NearbyclinicBloc, NearbyclinicState>(
        'emit [initial, loadSuccess] when nearby clinics is loaded',
        build: () => NearbyclinicBloc(
          homeRepository: homeRepository,
        ),
        act: (bloc) => bloc.add(NearbyclinicEvent.initialLoadStarted()),
        expect: () => <NearbyclinicState>[
          NearbyclinicState.initial(),
          NearbyclinicState.loadSuccess(clinics: clinics),
        ],
      );

      blocTest<NearbyclinicBloc, NearbyclinicState>(
        'emit [initial, loadFailure] when nearby clinics is not loaded',
        build: () {
          when(homeRepository.getNearbyClinics()).thenThrow(Exception("Oops"));

          return NearbyclinicBloc(
            homeRepository: homeRepository,
          );
        },
        act: (bloc) => bloc.add(NearbyclinicEvent.initialLoadStarted()),
        expect: () => <NearbyclinicState>[
          NearbyclinicState.initial(),
          NearbyclinicState.loadFailure(),
        ],
      );

      blocTest<NearbyclinicBloc, NearbyclinicState>(
        'emit [loadSuccess] when nearby clinics is loaded when isRefresh true',
        build: () {
          return NearbyclinicBloc(
            homeRepository: homeRepository,
          );
        },
        act: (bloc) => bloc.add(NearbyclinicEvent.loadStarted(isRefresh: true)),
        expect: () => <NearbyclinicState>[
          NearbyclinicState.loadSuccess(clinics: clinics)
        ],
      );

      blocTest<NearbyclinicBloc, NearbyclinicState>(
        'emit [loadFailure] when nearby clinics is not loaded when isRefresh true',
        build: () {
          when(homeRepository.getNearbyClinics()).thenThrow(Exception("Oops"));

          return NearbyclinicBloc(
            homeRepository: homeRepository,
          );
        },
        act: (bloc) => bloc.add(NearbyclinicEvent.loadStarted(isRefresh: true)),
        expect: () => <NearbyclinicState>[
          NearbyclinicState.loadFailure(),
        ],
      );
    });
  });
}
