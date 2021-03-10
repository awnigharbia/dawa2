import 'package:flutter/material.dart';

Future getCustomModal(
        {context,
        child,
        scrollControlled,
        isDismissible,
        rootNavigator}) async =>
    await showModalBottomSheet(
      context: context,
      useRootNavigator: rootNavigator ?? true,
      isDismissible: isDismissible ?? true,
      isScrollControlled: scrollControlled ?? false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      builder: (context) => child,
    );
