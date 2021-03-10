import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:dawa2/core/utils/utils.dart';

PreferredSize appbar(BuildContext context, String title) {
  return PreferredSize(
    preferredSize: Size.fromHeight(55.0),
    child: getCustomAppBar(
      context: context,
      title: title,
      centerTitle: false,
      leading: IconButton(
        icon: Icon(EvaIcons.arrowBackOutline),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      removeBackgroundColor: true,
      bottom: PreferredSize(
        child: Container(
          color: Colors.grey.withOpacity(0.3),
          height: 0.4,
        ),
        preferredSize: Size.fromHeight(0.4),
      ),
    ),
  );
}
