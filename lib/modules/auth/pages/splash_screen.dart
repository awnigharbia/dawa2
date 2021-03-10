import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(color: Colors.white),
        Image.asset(
          'assets/app-icon.png',
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
