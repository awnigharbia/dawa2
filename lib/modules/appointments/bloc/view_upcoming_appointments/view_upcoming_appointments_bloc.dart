import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dawa2/modules/appointments/appointments.dart';

part 'view_upcoming_appointments_event.dart';
part 'view_upcoming_appointments_state.dart';
part 'view_upcoming_appointments_bloc.freezed.dart';

class ViewUpcomingAppointmentsBloc
    extends Bloc<ViewUpcomingAppointmentsEvent, ViewUpcomingAppointmentsState> {
  ViewUpcomingAppointmentsBloc({
    ViewAppointmentsRepository? viewAppointmentsRepository,
  })  : _viewAppointmentsRepository =
            viewAppointmentsRepository ?? ViewAppointmentsRepository(),
        super(_ViewUpcomingAppointmentsInitial());

  final ViewAppointmentsRepository _viewAppointmentsRepository;

  @override
  Stream<ViewUpcomingAppointmentsState> mapEventToState(
    ViewUpcomingAppointmentsEvent event,
  ) =>
      event.map(
          loadStarted: _mapLoadStartedToState,
          cancelAppointment: _mapCancelAppointmentToState);

  Stream<ViewUpcomingAppointmentsState> _mapLoadStartedToState(
      _LoadStarted value) async* {
    yield* _loadStarted(value.isRefresh);
  }

  Stream<ViewUpcomingAppointmentsState> _loadStarted(bool isRefresh) async* {
    if (!isRefresh) {
      yield ViewUpcomingAppointmentsState.initial();
    }
    try {
      final appointmentsData = await _viewAppointmentsRepository.getUpcoming();
      final appointments = appointmentsData.build();

      yield ViewUpcomingAppointmentsState.loadSuccess(
          appointmentsData: appointments);
    } catch (_) {
      yield ViewUpcomingAppointmentsState.loadFailure();
    }
  }

  Stream<ViewUpcomingAppointmentsState> _mapCancelAppointmentToState(
      _CancelAppointment value) async* {
    final currentState = state;
    if (currentState is _ViewUpcomingAppointmentsLoadSuccess) {
      try {
        var appointments = currentState.appointmentsData;
        await _viewAppointmentsRepository
            .cancelAppointment(value.appointmentId!);

        appointments = appointments!.rebuild((b) => b.where((appointment) =>
            appointment.appointment!.id != value.appointmentId));

        yield ViewUpcomingAppointmentsState.loadSuccess(
            appointmentsData: appointments);
      } catch (_) {
        // do nothing
      }
    }
  }
}
