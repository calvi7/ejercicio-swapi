import 'package:flutter/material.dart';

class Themes {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 28,
        color: Colors.black,
      ),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
  );
}
