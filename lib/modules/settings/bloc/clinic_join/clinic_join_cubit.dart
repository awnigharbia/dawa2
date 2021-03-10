import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dawa2/modules/settings/repositories/repositories.dart';
import 'package:settings_api/settings_api.dart';
import '../../models/models.dart';

part 'clinic_join_state.dart';
part 'clinic_join_cubit.freezed.dart';

class ClinicJoinCubit extends Cubit<ClinicJoinState> {
  ClinicJoinCubit({SettingsRepository? settingsRepository})
      : _settingsRepository = settingsRepository ?? SettingsRepository(),
        super(ClinicJoinState());

  final SettingsRepository _settingsRepository;

  Future joinClinic() async {
    final joinClinic = ClinicJoin(
      clinicName: state.clinicName.value,
      clinicOwner: state.clinicOwner.value,
      contactNumber: state.contactOwner.value,
      createdAt: DateTime.now(),
    );

    try {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      await _settingsRepository.clinicJoin(joinClinic);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }

  void onClinicName(String value) {
    final clinicName = ClinicName.dirty(value);

    emit(state.copyWith(
        clinicName: clinicName, status: Formz.validate([clinicName])));
  }

  void onClinicOwner(String value) {
    final clinicOwner = ClinicOwner.dirty(value);

    emit(state.copyWith(
        clinicOwner: clinicOwner, status: Formz.validate([clinicOwner])));
  }

  void onContactNumber(String value) {
    final contactNumber = ContactNumber.dirty(value);

    emit(state.copyWith(
        contactOwner: contactNumber, status: Formz.validate([contactNumber])));
  }
}
