import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:dawa2/modules/auth/auth.dart';
import 'package:dawa2/modules/auth/bloc/update_display_name/update_display_name_cubit.dart';

main() {
  const name = DisplayName.dirty("Awni Gharbia");

  group("UpdateDisplayNameState", () {
    test('supports value comparisons', () {
      expect(UpdateDisplayNameState(), UpdateDisplayNameState());
    });

    test('returns same results when no properties are passed', () {
      expect(UpdateDisplayNameState().copyWith(), UpdateDisplayNameState());
    });

    test("return object with udpated status when status is passed", () {
      expect(UpdateDisplayNameState().copyWith(status: FormzStatus.pure),
          UpdateDisplayNameState(status: FormzStatus.pure));
    });

    test("returns object with updated display name when display name is passed",
        () {
      expect(UpdateDisplayNameState().copyWith(displayName: name),
          UpdateDisplayNameState(displayName: name));
    });
  });
}
