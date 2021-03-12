import 'package:dawa2/core/utils/utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var localDB = LocalDB();

  setUpAll(() async {
    await localDB.setupLocalDatabase();
    localDB.box('onBoarding');
  });

  group("test local database:", () {
    test("add value", () {
      localDB.put("visited", true);

      var value = localDB.get('visited');
      expect(value, isTrue);
    });

    test("remove value", () {
      localDB.delete("visited");

      var value = localDB.get("visited");
      expect(value, isNull);
    });

    test("clear box (delete all values)", () async {
      await localDB.clear();

      var value = localDB.get('visited');
      expect(value, isNull);
    });
  });
}
