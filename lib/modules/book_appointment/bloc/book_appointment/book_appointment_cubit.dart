import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../book_appointment.dart';

part 'book_appointment_cubit.freezed.dart';
part 'book_appointment_state.dart';

class BookAppointmentCubit extends Cubit<BookAppointmentState> {
  BookAppointmentCubit({BookAppointmentRepository? bookAppointmentRepository})
      : _bookAppointmentRepository =
            bookAppointmentRepository ?? BookAppointmentRepository(),
        super(BookAppointmentState());

  final BookAppointmentRepository _bookAppointmentRepository;

  Future addAppointment(
      ConfirmAppointmentDetail confirmAppointmentDetail) async {
    try {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));

      await _bookAppointmentRepository.addAppointment(confirmAppointmentDetail);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } catch (e) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}
