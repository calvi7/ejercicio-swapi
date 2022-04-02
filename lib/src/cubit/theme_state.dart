part of 'theme_cubit.dart';

@immutable
abstract class ThemeState {}

class ThemeInitial extends ThemeState {
  final ThemeData theme;
  ThemeInitial({required this.theme});
}
