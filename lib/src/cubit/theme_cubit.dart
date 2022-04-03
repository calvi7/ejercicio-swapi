import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intento_ejercicio1/src/resources/themes.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeDark());

  bool get value => state is ThemeDark ? true : false;

  void switchTheme() {
    if (state is ThemeDark) {
      emit(ThemeLight());
    } else {
      emit(ThemeDark());
    }
  }
}
