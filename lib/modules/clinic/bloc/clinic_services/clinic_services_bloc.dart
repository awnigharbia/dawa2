import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinic_services_event.dart';
part 'clinic_services_state.dart';
part 'clinic_services_bloc.freezed.dart';

class ClinicServicesBloc
    extends Bloc<ClinicServicesEvent, ClinicServicesState> {
  ClinicServicesBloc({final ClinicServicesApiClient? servicesApiClient})
      : _servicesApiClient = servicesApiClient ?? ClinicServicesApiClient(),
        super(_ClinicServicesInitial());

  final ClinicServicesApiClient _servicesApiClient;

  @override
  Stream<ClinicServicesState> mapEventToState(
    ClinicServicesEvent event,
  ) =>
      event.map(loadStarted: _mapLoadStartedToState);

  Stream<ClinicServicesState> _mapLoadStartedToState(
      _LoadStarted event) async* {
    yield* _loadStarted(event);
  }

  Stream<ClinicServicesState> _loadStarted(_LoadStarted event) async* {
    if (!event.isRefresh) {
      yield ClinicServicesState.initial();
    }

    try {
      final servicesData =
          await _servicesApiClient.getServices(event.servicesIdList!);

      final services = servicesData.build();

      yield ClinicServicesState.loadSuccess(services: services);
    } catch (e) {
      yield ClinicServicesState.loadFailure();
    }
  }
}
