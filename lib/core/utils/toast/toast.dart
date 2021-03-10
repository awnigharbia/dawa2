import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

import '../custom_toast.dart';

class Toast {
  static void showToast(String text) {
    BotToast.showText(
      text: text,
      contentColor: Colors.white,
      textStyle: TextStyle(color: Colors.black),
      wrapToastAnimation: (controller, cancel, Widget child) =>
          CustomAnimationToast(
        controller: controller,
        child: child,
      ),
    );
  }
}
