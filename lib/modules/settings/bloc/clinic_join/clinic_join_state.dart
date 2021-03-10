part of 'clinic_join_cubit.dart';

@freezed
abstract class ClinicJoinState with _$ClinicJoinState {
  const factory ClinicJoinState({
    @Default(ClinicName.pure()) ClinicName clinicName,
    @Default(ClinicOwner.pure()) ClinicOwner clinicOwner,
    @Default(ContactNumber.pure()) ContactNumber contactOwner,
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _ClinicJoinState;
}
