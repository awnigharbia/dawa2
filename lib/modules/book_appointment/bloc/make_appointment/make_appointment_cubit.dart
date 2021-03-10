import 'package:bloc/bloc.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'make_appointment_state.dart';
part 'make_appointment_cubit.freezed.dart';

class MakeAppointmentCubit extends Cubit<MakeAppointmentState> {
  MakeAppointmentCubit() : super(MakeAppointmentState());

  void onSelectService(ClinicService? selectedService) {
    emit(state.copyWith(service: selectedService!));
  }

  void onSelectDate(DateTime selectedDate) {
    emit(state.copyWith(appointmentDate: selectedDate));
  }

  void onSelectTime(TimeOfDay selectedTime) {
    emit(state.copyWith(appointmentTime: selectedTime));
  }

  bool isSubmitValid() =>
      state.appointmentDate != null &&
      state.service != null &&
      state.appointmentTime != null;
}
