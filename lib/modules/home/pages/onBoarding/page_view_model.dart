import 'package:dawa2/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel pageViewModelTemplate({
  @required BuildContext? context,
  @required String? imageUrl,
  @required String? titleText,
  @required String? bodyText,
}) {
  assert(context != null);
  assert(imageUrl != null);
  assert(bodyText != null);

  return PageViewModel(
    title: titleText,
    image: OrientationUtil(
      builder: (context, size) => SizedBox(
        width: size!.width * 0.3,
        height: size.height * 0.3,
        child: Image.asset(
          imageUrl!,
          fit: BoxFit.cover,
        ),
      ),
    ),
    body: bodyText,
    decoration: const PageDecoration(imagePadding: EdgeInsets.only(top: 16.0)),
  );
}
