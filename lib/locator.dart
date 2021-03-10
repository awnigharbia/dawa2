import 'package:get_it/get_it.dart';

import 'core/utils/utils.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => LocalDB());
}
