part of 'theme_cubit.dart';

@immutable
abstract class ThemeState {
  final ThemeData theme;

  const ThemeState({required this.theme});
}

class ThemeInitial extends ThemeState {
  // ignore: overridden_fields, annotate_overrides
  final ThemeData theme;
  const ThemeInitial({required this.theme})
      : super(
          theme: theme,
        );
}
