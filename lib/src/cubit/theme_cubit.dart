import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intento_ejercicio1/src/resources/resources.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial(theme: theme));

  static ThemeData theme = ThemeData(
    primaryColor: Colors.indigo,
    scaffoldBackgroundColor: Colors.indigoAccent,
    fontFamily: 'Monstserrat',
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      titleTextStyle: CustomTextStyles().appBarTextStyle,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    ),
  );
}
