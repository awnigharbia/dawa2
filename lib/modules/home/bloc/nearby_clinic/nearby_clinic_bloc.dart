import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:clinic_api/models/clinic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dawa2/modules/home/repositories/home_repository.dart';

part 'nearby_clinic_bloc.freezed.dart';
part 'nearby_clinic_event.dart';
part 'nearby_clinic_state.dart';

class NearbyclinicBloc extends Bloc<NearbyclinicEvent, NearbyclinicState> {
  NearbyclinicBloc({
    @required HomeRepository? homeRepository,
  })  : assert(homeRepository != null),
        _homeRepository = homeRepository ?? HomeRepository(),
        super(_NearbyClinicInitial());

  final HomeRepository _homeRepository;

  HomeRepository get clinicRepository => _homeRepository;

  @override
  Stream<NearbyclinicState> mapEventToState(
    NearbyclinicEvent event,
  ) =>
      event.map(
          initialLoadStarted: _mapInitialLoadStartedToState,
          loadStarted: _mapLoadStartedToState);

  Stream<NearbyclinicState> _mapLoadStartedToState(
      _NearbyClinicLoadStarted value) async* {
    yield* _loadNearbyClinicData(isRefresh: value.isRefresh);
  }

  Stream<NearbyclinicState> _mapInitialLoadStartedToState(
      _NearbyClinicInitialLoadStarted value) async* {
    yield* _loadNearbyClinicData(isRefresh: false);
  }

  Stream<NearbyclinicState> _loadNearbyClinicData({bool? isRefresh}) async* {
    if (!isRefresh!) {
      yield NearbyclinicState.initial();
    }

    try {
      final nearbyClinicData = await _homeRepository.getNearbyClinics();

      final nearbyClinics = nearbyClinicData.build();

      yield NearbyclinicState.loadSuccess(clinics: nearbyClinics);
    } catch (e) {
      print(e);
      yield NearbyclinicState.loadFailure();
    }
  }
}
