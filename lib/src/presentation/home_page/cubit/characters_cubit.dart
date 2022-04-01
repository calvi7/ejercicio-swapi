import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import 'package:intento_ejercicio1/src/data/models/character_model.dart';
import 'package:intento_ejercicio1/src/data/repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final Repository repository;

  CharactersCubit({
    required this.repository,
  }) : super(CharactersLoading());

  List<Character> localCharacters = [];

  int currentPage = 0;

  void fetchList() async {
    currentPage++;
    if (currentPage < 9) {
      var characterList = await repository.fetchList(currentPage);
      if (characterList != null) {
        localCharacters = [
          ...localCharacters,
          ...characterList,
        ];
        emit(CharactersLoaded(characters: localCharacters));
      } else {
        emit(CharactersError());
      }
    }
  }
}
