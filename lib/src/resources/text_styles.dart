import 'package:flutter/material.dart';

class CustomTextStyles {
  TextStyle get appBarLightTextStyle => const TextStyle(
        fontSize: 28,
        color: Colors.black,
      );

  TextStyle get cardTextStyle => const TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      );

  TextStyle get listTileTitleStyle => const TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      );

  TextStyle get listTileSubtitleStyle => const TextStyle(
        fontSize: 14,
        color: Colors.grey,
        fontWeight: FontWeight.w700,
      );
}
