import 'package:dawa2/constants/constants.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getCustomAppBar(
        title: Localization.of(context)!.tr("about"),
        context: context,
        isDefaultBack: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            OrientationUtil(builder: (context, size) {
              return SizedBox(
                height: size!.width * 0.4,
                child: Image.asset("assets/app-icon.png"),
              );
            }),
            Spaces().highSpace(),
            Text(
              Localization.of(context)!.getCurrentDirection() == 'rtl'
                  ? AppConstants.aboutUs
                  : AppConstants.aboutUsEN,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontSize: 16.0, letterSpacing: 1.1),
            ),
          ],
        ),
      ),
    );
  }
}
