import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dawa2/modules/appointments/appointments.dart';

part 'view_pass_appointments_event.dart';
part 'view_pass_appointments_state.dart';
part 'view_pass_appointments_bloc.freezed.dart';

class ViewPassAppointmentsBloc
    extends Bloc<ViewPassAppointmentsEvent, ViewPassAppointmentsState> {
  ViewPassAppointmentsBloc({
    ViewAppointmentsRepository? viewAppointmentsRepository,
  })  : _viewAppointmentsRepository =
            viewAppointmentsRepository ?? ViewAppointmentsRepository(),
        super(_ViewPassAppointmentsInitial());

  final ViewAppointmentsRepository _viewAppointmentsRepository;

  @override
  Stream<ViewPassAppointmentsState> mapEventToState(
    ViewPassAppointmentsEvent event,
  ) =>
      event.map(loadStarted: _mapLoadStartedToState);

  Stream<ViewPassAppointmentsState> _mapLoadStartedToState(
      _LoadStarted value) async* {
    yield* _loadStarted(value.isRefresh);
  }

  Stream<ViewPassAppointmentsState> _loadStarted(bool isRefresh) async* {
    if (!isRefresh) {
      yield ViewPassAppointmentsState.initial();
    }
    try {
      final appointmentsData = await _viewAppointmentsRepository.getPass();
      final appointments = appointmentsData.build();

      yield ViewPassAppointmentsState.loadSuccess(
          appointmentsData: appointments);
    } catch (_) {
      yield ViewPassAppointmentsState.loadFailure();
    }
  }
}
