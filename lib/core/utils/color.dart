import 'package:flutter/material.dart';

class ColorSchema {
  static const MaterialColor scaffoldbackground =
      MaterialColor(_scaffoldbackgroundPrimaryValue, <int, Color>{
    50: Color(0xFFFEFEFF),
    100: Color(0xFFFDFDFE),
    200: Color(0xFFFBFBFE),
    300: Color(0xFFF9F9FE),
    400: Color(0xFFF8F8FD),
    500: Color(_scaffoldbackgroundPrimaryValue),
    600: Color(0xFFF6F6FD),
    700: Color(0xFFF5F5FC),
    800: Color(0xFFF3F3FC),
    900: Color(0xFFF1F1FC),
  });
  static const int _scaffoldbackgroundPrimaryValue = 0xFFF7F7FD;

  static const MaterialColor scaffoldbackgroundAccent =
      MaterialColor(_scaffoldbackgroundAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_scaffoldbackgroundAccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });
  static const int _scaffoldbackgroundAccentValue = 0xFFFFFFFF;

  static const MaterialColor green =
      MaterialColor(_greenPrimaryValue, <int, Color>{
    50: Color(0xFFE4F8EF),
    100: Color(0xFFBCECD8),
    200: Color(0xFF90E0BE),
    300: Color(0xFF64D4A3),
    400: Color(0xFF42CA90),
    500: Color(_greenPrimaryValue),
    600: Color(0xFF1DBB74),
    700: Color(0xFF18B369),
    800: Color(0xFF14AB5F),
    900: Color(0xFF0B9E4C),
  });
  static const int _greenPrimaryValue = 0xFF21C17C;

  static const MaterialColor greenAccent =
      MaterialColor(_greenAccentValue, <int, Color>{
    100: Color(0xFFCCFFE0),
    200: Color(_greenAccentValue),
    400: Color(0xFF66FFA2),
    700: Color(0xFF4CFF93),
  });
  static const int _greenAccentValue = 0xFF99FFC1;

  static const MaterialColor disabledbtn =
      MaterialColor(_disabledbtnPrimaryValue, <int, Color>{
    50: Color(0xFFFDFDFD),
    100: Color(0xFFFAFAFA),
    200: Color(0xFFF6F7F7),
    300: Color(0xFFF2F4F4),
    400: Color(0xFFF0F1F1),
    500: Color(_disabledbtnPrimaryValue),
    600: Color(0xFFEBEDED),
    700: Color(0xFFE8EBEB),
    800: Color(0xFFE5E8E8),
    900: Color(0xFFE0E4E4),
  });
  static const int _disabledbtnPrimaryValue = 0xFFEDEFEF;

  static const MaterialColor disabledbtnAccent =
      MaterialColor(_disabledbtnAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_disabledbtnAccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });
  static const int _disabledbtnAccentValue = 0xFFFFFFFF;

  static const MaterialColor yellow =
      MaterialColor(_yellowPrimaryValue, <int, Color>{
    50: Color(0xFFFCF4E2),
    100: Color(0xFFF9E3B8),
    200: Color(0xFFF5D088),
    300: Color(0xFFF0BD58),
    400: Color(0xFFEDAE35),
    500: Color(_yellowPrimaryValue),
    600: Color(0xFFE7980F),
    700: Color(0xFFE48E0C),
    800: Color(0xFFE1840A),
    900: Color(0xFFDB7305),
  });
  static const int _yellowPrimaryValue = 0xFFEAA011;

  static const MaterialColor yellowAccent =
      MaterialColor(_yellowAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_yellowAccentValue),
    400: Color(0xFFFFCB9D),
    700: Color(0xFFFFBD84),
  });
  static const int _yellowAccentValue = 0xFFFFE6D0;

  static const MaterialColor rate =
      MaterialColor(_ratePrimaryValue, <int, Color>{
    50: Color(0xFFFFF3F3),
    100: Color(0xFFFEE1E0),
    200: Color(0xFFFECECB),
    300: Color(0xFFFDBAB6),
    400: Color(0xFFFCABA7),
    500: Color(_ratePrimaryValue),
    600: Color(0xFFFC948F),
    700: Color(0xFFFB8A84),
    800: Color(0xFFFB807A),
    900: Color(0xFFFA6E69),
  });
  static const int _ratePrimaryValue = 0xFFFC9C97;

  static const MaterialColor rateAccent =
      MaterialColor(_rateAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_rateAccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFEDEC),
  });
  static const int _rateAccentValue = 0xFFFFFFFF;
}
