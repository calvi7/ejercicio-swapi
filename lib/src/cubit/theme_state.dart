part of 'theme_cubit.dart';

@immutable
abstract class ThemeState {
  final ThemeData theme;
  final bool value;

  const ThemeState({required this.theme, required this.value});
}

class ThemeInitial extends ThemeState {
  // ignore: overridden_fields, annotate_overrides
  final ThemeData theme;
  final bool value;

  const ThemeInitial({required this.theme, required this.value})
      : super(
          theme: theme,
          value: value,
        );
}

class NewTheme extends ThemeState {
  // ignore: annotate_overrides, overridden_fields
  final ThemeData theme;
  const NewTheme({required this.theme, required bool value})
      : super(
          theme: theme,
          value: value,
        );
}
