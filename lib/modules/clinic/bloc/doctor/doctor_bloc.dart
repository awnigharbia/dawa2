import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:clinic_api/models/doctor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';
part 'doctor_bloc.freezed.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  DoctorBloc(this.clinicId, {final DoctorApiClient? doctorRepository})
      : assert(doctorRepository != null),
        _doctorRepository = doctorRepository ?? DoctorApiClient(),
        super(_DoctorInitial());

  final DoctorApiClient _doctorRepository;
  final String clinicId;

  @override
  Stream<DoctorState> mapEventToState(
    DoctorEvent event,
  ) =>
      event.map(loadStarted: _mapLoadStartedToState);

  Stream<DoctorState> _mapLoadStartedToState(_LoadStarted value) async* {
    yield* _loadStarted(value.isRefresh);
  }

  Stream<DoctorState> _loadStarted(isRefresh) async* {
    if (!isRefresh) {
      yield DoctorState.initial();
    }

    try {
      final doctorData = await _doctorRepository.getDoctoryByClinicId(clinicId);

      yield DoctorState.loadSuccess(doctor: doctorData);
    } catch (e) {
      yield DoctorState.loadFailure();
    }
  }
}
