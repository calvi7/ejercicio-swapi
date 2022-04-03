part of 'theme_cubit.dart';

@immutable
abstract class ThemeState {
  final ThemeData themeData;
  final bool value;

  const ThemeState({required this.themeData, required this.value});
}

class ThemeDark extends ThemeState {
  static final ThemeData _darkTheme = Themes.darkTheme;
  static const bool _value = true;
  ThemeDark() : super(themeData: _darkTheme, value: _value);
}

class ThemeLight extends ThemeState {
  static final ThemeData _lightTheme = Themes.lightTheme;
  static const bool _value = false;
  ThemeLight() : super(themeData: _lightTheme, value: _value);
}
