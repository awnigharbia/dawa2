import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalDB {
  var _box;

  setupLocalDatabase() async {
    await initHiveFlutter();
    await openBoxs();
  }

  Future<void> initHiveFlutter() async {
    await Hive.initFlutter();
  }

  Future<void> openBoxs() async {
    await Hive.openBox('user');
    await Hive.openBox('onBoarding');
  }

  void box(String boxName) {
    _box = Hive.box(boxName);
  }

  dynamic get(String key, {defaultValue}) {
    return _box.get(key, defaultValue: defaultValue);
  }

  void put(String key, dynamic value) {
    _box.put(key, value);
  }

  void delete(String key) {
    _box.delete(key);
  }

  Future<void> clear() async {
    await _box.clear();
  }
}
