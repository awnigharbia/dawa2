// @dart=2.9
import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';
import 'package:mockito/mockito.dart';

class MockClinicRepository extends Mock implements ClinicApiClient {}

main() {
  int fetchLimit = 100;

  group('ViewallNearbyClinicBloc', () {
    ClinicApiClient clinicRepository;

    setUp(() {
      clinicRepository = MockClinicRepository();
    });

    test('throws AssertionError when clinicrepository is null', () {
      expect(() => ViewallNearbyClinicBloc(clinicRepository: null),
          throwsAssertionError);
    });

    test('initial state is ViewallNearbyClinic.initial', () {
      expect(ViewallNearbyClinicBloc(clinicRepository: clinicRepository).state,
          ViewallNearbyClinicState.initial());
    });

    group('LoadStarted', () {
      final clinics = BuiltList<Clinic>();

      setUp(() async {
        when(clinicRepository.getNearbyClinics(limit: fetchLimit))
            .thenAnswer((_) async => []);
      });

      blocTest<ViewallNearbyClinicBloc, ViewallNearbyClinicState>(
        'emit [initial, loadSuccess] when nearby clinics loadSuccess',
        build: () =>
            ViewallNearbyClinicBloc(clinicRepository: clinicRepository),
        act: (bloc) => bloc.add(ViewallNearbyClinicEvent.loadStarted()),
        expect: () => <ViewallNearbyClinicState>[
          ViewallNearbyClinicState.initial(),
          ViewallNearbyClinicState.loadSuccess(clinics: clinics),
        ],
      );

      blocTest<ViewallNearbyClinicBloc, ViewallNearbyClinicState>(
        'emit [initial, loadFailure] when nearby clinics loadFailure',
        build: () {
          when(clinicRepository.getNearbyClinics(limit: fetchLimit))
              .thenThrow((_) => Exception("Oops"));

          return ViewallNearbyClinicBloc(clinicRepository: clinicRepository);
        },
        act: (bloc) => bloc.add(ViewallNearbyClinicEvent.loadStarted()),
        expect: () => <ViewallNearbyClinicState>[
          ViewallNearbyClinicState.initial(),
          ViewallNearbyClinicState.loadFailure(),
        ],
      );

      blocTest<ViewallNearbyClinicBloc, ViewallNearbyClinicState>(
        'emit [loadSuccess] when nearby clinics loadSuccess with isRefresh true',
        build: () =>
            ViewallNearbyClinicBloc(clinicRepository: clinicRepository),
        act: (bloc) =>
            bloc.add(ViewallNearbyClinicEvent.loadStarted(isRefresh: true)),
        expect: () => <ViewallNearbyClinicState>[
          ViewallNearbyClinicState.loadSuccess(clinics: clinics),
        ],
      );

      blocTest<ViewallNearbyClinicBloc, ViewallNearbyClinicState>(
        'emit [loadFailure] when nearby clinics loadFailure',
        build: () {
          when(clinicRepository.getNearbyClinics(limit: fetchLimit))
              .thenThrow((_) => Exception("Oops"));

          return ViewallNearbyClinicBloc(clinicRepository: clinicRepository);
        },
        act: (bloc) =>
            bloc.add(ViewallNearbyClinicEvent.loadStarted(isRefresh: true)),
        expect: () => <ViewallNearbyClinicState>[
          ViewallNearbyClinicState.loadFailure(),
        ],
      );
    });
  });
}
