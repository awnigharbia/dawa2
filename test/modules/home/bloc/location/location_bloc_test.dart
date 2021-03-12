// @dart=2.9
import 'package:bloc_test/bloc_test.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:dawa2/modules/home/bloc/bloc.dart';
import 'package:mockito/mockito.dart';

class MockLocationServices extends Mock implements LocationServices {}

main() {
  LocationServices locationServices;

  setUp(() {
    locationServices = MockLocationServices();
  });

  group('locationBloc', () {
    setUp(() {
      when(locationServices.getLocation()).thenAnswer((_) async => Position(
            latitude: 0.0,
            longitude: 0.0,
          ));
    });

    test('throws AssertionError when locationServices is null', () {
      expect(
        () => LocationBloc(
          locationServices: null,
        ),
        throwsAssertionError,
      );
    });

    test('initial state is LocationInitialState ', () {
      expect(LocationBloc(locationServices: locationServices).state,
          LocationState.initial());
    });

    group('started', () {
      blocTest<LocationBloc, LocationState>(
        'emit [loadSuccess] when location is loaded',
        build: () => LocationBloc(
          locationServices: locationServices,
        ),
        act: (bloc) => bloc.add(LocationEvent.started()),
        expect: () => <LocationState>[
          LocationState.loadSuccess(0, 0),
        ],
      );

      blocTest<LocationBloc, LocationState>(
        'emit [loadFailure] when location is not loaded',
        build: () {
          when(locationServices.getLocation()).thenThrow(Exception("Oops"));
          return LocationBloc(
            locationServices: locationServices,
          );
        },
        act: (bloc) => bloc.add(LocationEvent.started()),
        expect: () => <LocationState>[
          LocationState.loadFailure(),
        ],
      );
    });

    group('request permission', () {
      blocTest<LocationBloc, LocationState>(
        'emit [initial, loadSuccess] when permission is guaranteed',
        build: () => LocationBloc(
          locationServices: locationServices,
        ),
        act: (bloc) => bloc.add(LocationEvent.requestPermission()),
        expect: () => <LocationState>[
          LocationState.initial(),
          LocationState.loadSuccess(0.0, 0.0),
        ],
      );

      blocTest<LocationBloc, LocationState>(
        'emit [loadFailure] when location permission is denied',
        build: () {
          when(locationServices.requestPerm())
              .thenAnswer((_) => LocationPermission.denied);

          return LocationBloc(
            locationServices: locationServices,
          );
        },
        act: (bloc) => bloc.add(LocationEvent.requestPermission()),
        expect: () => <LocationState>[
          LocationState.loadFailure(),
        ],
      );

      blocTest<LocationBloc, LocationState>(
        'emit [loadFailure] when location permission is deniedForEver',
        build: () {
          when(locationServices.requestPerm())
              .thenAnswer((_) => LocationPermission.deniedForever);

          return LocationBloc(
            locationServices: locationServices,
          );
        },
        act: (bloc) => bloc.add(LocationEvent.requestPermission()),
        expect: () => <LocationState>[
          LocationState.loadFailure(),
        ],
      );
    });
  });
}
