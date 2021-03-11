import 'package:dawa2/localization/doctor_pet_localization.dart';

import 'package:dawa2/config/router/route_name_builder.dart';
import 'package:flutter/material.dart';
import 'page_view_model.dart';
import 'onBoarding_modal.dart';
import 'package:introduction_screen/introduction_screen.dart';

// ignore: must_be_immutable
class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  OnBoardingModel _onBoardingModel = OnBoardingModel();

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        pageViewModelTemplate(
          context: context,
          imageUrl: "assets/medical-care.png",
          titleText: Localization.of(context)!.tr("onBoardingFirstTitle"),
          bodyText: Localization.of(context)!.tr("onBoardingFirstBody"),
        ),
        pageViewModelTemplate(
          context: context,
          imageUrl: "assets/search-clinic.png",
          titleText: Localization.of(context)!.tr("onBoardingSecondTitle"),
          bodyText: Localization.of(context)!.tr("onBoardingSecondBody"),
        ),
        pageViewModelTemplate(
          context: context,
          imageUrl: "assets/review-clinics.png",
          titleText: Localization.of(context)!.tr("onBoardingThirdTitle"),
          bodyText: Localization.of(context)!.tr("onBoardingThirdBody"),
        ),
      ],
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: Text(Localization.of(context)!.tr("skipBtn")!),
      next: const Icon(Icons.arrow_forward),
      done: Text(Localization.of(context)!.tr("doneBtn")!),
      onDone: () {
        _onBoardingModel.setSeenToTrue();
        Navigator.of(context, rootNavigator: true)
            .pushReplacementNamed(RouteNameBuilder.loginResource);
      },
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeColor: Theme.of(context).primaryColor,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
