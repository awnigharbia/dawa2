import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/locator.dart';
import 'package:flutter/material.dart';

class LocaleUtil {
  LocalDB _localDB = locator<LocalDB>();

  LocaleUtil() {
    _localDB.box("user");
  }

  Locale localeCallback(
      Locale? deviceLocale, Iterable<Locale>? supportedLocales) {
    var lang = _localDB.get('lang');

    if (lang != null && lang == 'en') {
      return Locale('en', 'US');
    } else if (lang == 'ar') {
      return Locale('ar', 'SA');
    }
    for (var locale in supportedLocales!) {
      if (locale.languageCode == deviceLocale!.languageCode &&
          locale.countryCode == deviceLocale.countryCode) {
        return deviceLocale;
      }
    }

    return supportedLocales.first;
  }
}
