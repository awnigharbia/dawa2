import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';

import 'locale_icon.dart';

AppBar getCustomAppBar({
  context,
  List<Widget>? actions,
  Widget? leading,
  String? title,
  bool? isDefaultBack,
  bool? centerTitle,
  bool removeBackgroundColor = false,
  PreferredSizeWidget? bottom,
}) {
  return AppBar(
    title: Text(
      title ?? "",
      style: TextStyle(
        color: Colors.black,
        fontWeight: Localization.of(context)!.getCurrentDirection() == 'rtl'
            ? FontWeight.normal
            : FontWeight.w500,
      ),
    ),
    centerTitle: centerTitle ?? true,
    backgroundColor: removeBackgroundColor ? Colors.transparent : Colors.white,
    elevation: removeBackgroundColor ? 0 : 1,
    bottom: bottom,
    leading: isDefaultBack ?? false
        ? IconButton(
            icon: Icon(
              LocaleIcon.backArrow(context),
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        : IconButton(
            icon: leading!,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
    actions: actions,
  );
}
