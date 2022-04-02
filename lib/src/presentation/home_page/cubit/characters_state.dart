part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersLoading extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<Character> characters;
  final int page;

  CharactersLoaded({required this.characters, required this.page});
}

class CharactersError extends CharactersState {}
