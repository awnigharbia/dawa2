import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc({
    final LocationServices? locationServices,
  })  : assert(locationServices != null),
        _locationServices = locationServices ?? LocationServices(),
        super(_LocationInitial());

  final LocationServices _locationServices;

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) =>
      event.map(
        started: _mapStartedToState,
        requestPermission: _mapRequestPermissionToState,
      );

  Stream<LocationState> _mapStartedToState(_LocationStarted value) async* {
    yield* _getLocation();
  }

  Stream<LocationState> _getLocation() async* {
    try {
      Position position = await _locationServices.getLocation();
      yield LocationState.loadSuccess(position.latitude, position.longitude);
    } catch (_) {
      yield LocationState.loadFailure();
    }
  }

  Stream<LocationState> _mapRequestPermissionToState(
      _RequestPermissionStarted value) async* {
    LocationPermission permission = await _getPermission();
    yield* _validatePermission(permission);
  }

  Future<LocationPermission> _getPermission() async {
    LocationPermission permission = await _locationServices.requestPerm();
    return permission;
  }

  Stream<LocationState> _validatePermission(
      LocationPermission permission) async* {
    if (permission == LocationPermission.deniedForever ||
        permission == LocationPermission.denied) {
      yield LocationState.loadFailure();
    } else {
      yield LocationState.initial();
      yield* _getLocation();
    }
  }
}
