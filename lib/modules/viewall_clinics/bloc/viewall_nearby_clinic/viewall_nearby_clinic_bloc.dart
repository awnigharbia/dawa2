import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'viewall_nearby_clinic_event.dart';
part 'viewall_nearby_clinic_state.dart';
part 'viewall_nearby_clinic_bloc.freezed.dart';

class ViewallNearbyClinicBloc
    extends Bloc<ViewallNearbyClinicEvent, ViewallNearbyClinicState> {
  ViewallNearbyClinicBloc({
    final ClinicApiClient? clinicRepository,
  })  : assert(clinicRepository != null),
        _clinicRepository = clinicRepository ?? ClinicApiClient(),
        super(_ViewallNearbyClinicInitial());

  final ClinicApiClient _clinicRepository;
  int fetchLimit = 100;

  @override
  Stream<ViewallNearbyClinicState> mapEventToState(
    ViewallNearbyClinicEvent event,
  ) =>
      event.map(loadStarted: _mapLoadStartedToState);

  Stream<ViewallNearbyClinicState> _mapLoadStartedToState(
      _LoadStarted value) async* {
    yield* _loadStarted(isRefresh: value.isRefresh);
  }

  Stream<ViewallNearbyClinicState> _loadStarted({bool? isRefresh}) async* {
    if (!isRefresh!) {
      yield ViewallNearbyClinicState.initial();
    }
    try {
      final clinicData =
          await _clinicRepository.getNearbyClinics(limit: fetchLimit);
      final clinics = clinicData.build();

      yield ViewallNearbyClinicState.loadSuccess(clinics: clinics);
    } catch (_) {
      yield ViewallNearbyClinicState.loadFailure();
    }
  }
}
