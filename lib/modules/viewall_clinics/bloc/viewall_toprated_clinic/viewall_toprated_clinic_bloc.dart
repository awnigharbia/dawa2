import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';

part 'viewall_toprated_clinic_event.dart';
part 'viewall_toprated_clinic_state.dart';
part 'viewall_toprated_clinic_bloc.freezed.dart';

class ViewallTopratedClinicBloc
    extends Bloc<ViewallTopratedClinicEvent, ViewallTopratedClinicState> {
  ViewallTopratedClinicBloc({
    ViewAllRepository? viewallRepository,
  })  : assert(viewallRepository != null),
        _viewallRepository = viewallRepository ?? ViewAllRepository(),
        super(_ViewAllTopRatedInitial());

  final ViewAllRepository _viewallRepository;

  @override
  Stream<ViewallTopratedClinicState> mapEventToState(
    ViewallTopratedClinicEvent event,
  ) =>
      event.map(loadStarted: _mapLoadStartedToState);

  Stream<ViewallTopratedClinicState> _mapLoadStartedToState(
      _LoadStarted event) async* {
    final currentState = state;
    if (_validateCondition(event, currentState)) {
      if (currentState is _ViewAllTopRatedInitial) {
        yield* _loadInitial();
      }

      if (currentState is _ViewAllTopRatedLoadSuccess && !event.isRefresh) {
        yield* _loadMore(currentState);
      }

      if (event is _LoadStarted && event.isRefresh) {
        yield* _loadRefresh();
      }
    }
  }

  Stream<ViewallTopratedClinicState> _loadInitial() async* {
    try {
      final clinics =
          await _viewallRepository.getTopRatedClinics(isReset: true);

      yield _ViewAllTopRatedLoadSuccess(
          clinics: clinics.build(),
          hasReachedMax: _viewallRepository.hasReachedMax);
    } catch (e) {
      yield ViewallTopratedClinicState.loadFailure();
    }
  }

  Stream<ViewallTopratedClinicState> _loadRefresh() async* {
    try {
      final clinics =
          await _viewallRepository.getTopRatedClinics(isReset: true);

      yield _ViewAllTopRatedLoadSuccess(
          clinics: clinics.build(),
          hasReachedMax: _viewallRepository.hasReachedMax);
    } catch (_) {
      yield ViewallTopratedClinicState.loadFailure();
    }
  }

  Stream<ViewallTopratedClinicState> _loadMore(
      _ViewAllTopRatedLoadSuccess currentState) async* {
    try {
      final clinicsData = await _viewallRepository.getTopRatedClinics();

      final clinics =
          currentState.clinics!.rebuild((b) => b.addAll(clinicsData));

      yield clinicsData.isEmpty
          ? currentState.copyWith(hasReachedMax: true)
          : _ViewAllTopRatedLoadSuccess(
              clinics: clinics,
              hasReachedMax: _viewallRepository.hasReachedMax,
            );
    } catch (_) {
      yield ViewallTopratedClinicState.loadFailure();
    }
  }

  bool _validateCondition(event, currentState) {
    final isLoadStarted = event is _LoadStarted;
    return isLoadStarted && !_hasReachedMax(currentState) ||
        isLoadStarted && event.isRefresh;
  }

  bool _hasReachedMax(ViewallTopratedClinicState state) =>
      state is _ViewAllTopRatedLoadSuccess && state.hasReachedMax;
}
