import 'package:dawa2/core/utils/utils.dart';

import '../../../../locator.dart';

class OnBoardingModel {
  final _localDB = locator<LocalDB>();

  OnBoardingModel() {
    _localDB.box("onBoarding");
  }

  void setSeenToTrue() {
    _localDB.put("seen", true);
  }

  bool getOnboardingStatus() {
    return _localDB.get("seen", defaultValue: false);
  }

  void clear() {
    _localDB.clear();
  }
}
