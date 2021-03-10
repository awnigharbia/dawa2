part of 'book_appointment_cubit.dart';

@freezed
abstract class BookAppointmentState with _$BookAppointmentState {
  const factory BookAppointmentState(
      {@Default(FormzStatus.pure) FormzStatus status}) = _BookAppointmentState;
}
