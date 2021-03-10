import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class LocaleIcon {
  static IconData listArrow(context) {
    return Localization.of(context)!.getCurrentDirection() == 'rtl'
        ? EvaIcons.arrowIosBack
        : EvaIcons.arrowIosForward;
  }

  static IconData backArrow(context) {
    return Localization.of(context)!.getCurrentDirection() == 'rtl'
        ? EvaIcons.arrowForwardOutline
        : EvaIcons.arrowBackOutline;
  }
}
