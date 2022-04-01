part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersLoading extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<Character> characters;

  CharactersLoaded({required this.characters});
}

class CharactersError extends CharactersState {}