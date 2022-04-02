import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial(theme: lightTheme, value: false));

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

  final ThemeData darkTheme = ThemeData.dark().copyWith(
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

  void switchTheme() {
    var newTheme =
        state.theme.brightness == Brightness.dark ? lightTheme : darkTheme;
    emit(NewTheme(theme: newTheme, value: !state.value));
  }
}
