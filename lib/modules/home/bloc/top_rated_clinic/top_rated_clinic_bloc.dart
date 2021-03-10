import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:clinic_api/models/clinic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';

part 'top_rated_clinic_event.dart';
part 'top_rated_clinic_state.dart';
part 'top_rated_clinic_bloc.freezed.dart';

class TopRatedClinicBloc
    extends Bloc<TopRatedClinicEvent, TopRatedClinicState> {
  TopRatedClinicBloc({
    @required ViewAllRepository? viewallRepository,
  })  : assert(viewallRepository != null),
        _viewallRepository = viewallRepository ?? ViewAllRepository(),
        super(_TopRatedClinicInitial());

  final ViewAllRepository _viewallRepository;

  @override
  Stream<TopRatedClinicState> mapEventToState(
    TopRatedClinicEvent event,
  ) =>
      event.map(
          initialLoadStarted: _mapInitialLoadStartedToState,
          loadStarted: _mapLoadStartedToState);

  Stream<TopRatedClinicState> _mapLoadStartedToState(
      _TopRatedClinicLoadStarted value) async* {
    yield* _loadTopRatedClinics(isRefresh: value.isRefresh);
  }

  Stream<TopRatedClinicState> _mapInitialLoadStartedToState(
      _TopRatedClinicInitialLoadStarted value) async* {
    yield* _loadTopRatedClinics(isRefresh: false);
  }

  Stream<TopRatedClinicState> _loadTopRatedClinics({bool? isRefresh}) async* {
    if (!isRefresh!) {
      yield TopRatedClinicState.initial();
    }

    try {
      final topRatedClinicData =
          await _viewallRepository.getTopRatedClinics(isReset: isRefresh);

      final topRatedClinics = topRatedClinicData.build();

      yield TopRatedClinicState.loadSuccess(clinics: topRatedClinics);
    } catch (e) {
      yield TopRatedClinicState.loadFailure();
    }
  }
}
