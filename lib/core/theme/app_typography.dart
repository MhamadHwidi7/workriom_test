import 'package:flutter/material.dart';
//! this class defines the typography styles used in the app from the figma design

class AppTypography {
  AppTypography._();
  static const String fontFamily = 'Rubik';
  static const TextStyle title2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w500,
    height: 28 / 22,
    letterSpacing: 0.35,
  );
  static const TextStyle headline3 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 17,
    fontWeight: FontWeight.w400,
    height: 22 / 17,
    letterSpacing: -0.41,
  );

  static const TextStyle body = TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    height: 24 / 15,
    letterSpacing: -0.24,
  );

  static const TextStyle infoBody = TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    height: 21 / 15,
    letterSpacing: -0.32,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    height: 21 / 15,
    letterSpacing: -0.32,
  );
  static const TextStyle headerBodyReg = TextStyle(
    fontFamily: fontFamily,
    fontSize: 17,
    fontWeight: FontWeight.w400,
    height: 22 / 17,
    letterSpacing: -0.41,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
  );

  static const TextStyle bodyVerySmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 16 / 12,
  );
  static const TextStyle callout = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    height: 18 / 13,
    letterSpacing: 0.1,
  );
  static const TextStyle footnote = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 18 / 13,
    letterSpacing: -0.08,
  );
  static const TextStyle footnoteTerms = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 16 / 12,
  );

  static const TextStyle caption1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    fontWeight: FontWeight.w400,
    height: 14 / 11,
  );

  static const TextStyle caption1Medium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 14 / 11,
  );
  static TextTheme get textTheme => const TextTheme(
    displayLarge: title2,
    headlineSmall: headline3,
    bodyLarge: body,
    bodyMedium: bodySmall,
    labelLarge: bodyMedium,
    bodySmall: footnote,
    labelSmall: caption1,
  );
}
