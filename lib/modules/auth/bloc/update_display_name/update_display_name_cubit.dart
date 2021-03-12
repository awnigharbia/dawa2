import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dawa2/modules/auth/auth.dart';
import 'package:user_api/user_api.dart';

part 'update_display_name_cubit.freezed.dart';
part 'update_display_name_state.dart';

class UpdateDisplayNameCubit extends Cubit<UpdateDisplayNameState> {
  UpdateDisplayNameCubit(this._userService)
      : assert(_userService != null),
        super(const UpdateDisplayNameState());

  final UserApiClient? _userService;

  Future<void> updateDisplayName() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await _userService!.updateDisplayName(state.displayName.value);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }

  void nameChanged(String value) {
    final displayName = DisplayName.dirty(value);

    emit(state.copyWith(
        displayName: displayName, status: Formz.validate([displayName])));
  }

  bool? isBtnValid() {
    if (state.status.isValid && state.status.isValidated) {
      return true;
    }
    return false;
  }
}
