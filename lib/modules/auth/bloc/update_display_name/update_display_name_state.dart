part of 'update_display_name_cubit.dart';

@freezed
abstract class UpdateDisplayNameState with _$UpdateDisplayNameState {
  const factory UpdateDisplayNameState({
    @Default(DisplayName.pure()) DisplayName displayName,
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _UpdateDisplayNameState;
}
