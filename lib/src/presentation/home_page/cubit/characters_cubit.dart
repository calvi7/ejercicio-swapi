import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:intento_ejercicio1/src/resources/resources.dart';
import 'package:meta/meta.dart';

import 'package:intento_ejercicio1/src/data/models/character_model.dart';
import 'package:intento_ejercicio1/src/data/repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final Repository repository;

  List<Character> localCharacters = [];
  int currentPage = 0;

  CharactersCubit({
    required this.repository,
  }) : super(CharactersLoading());

  void fetchList() async {
    currentPage++;
    if (currentPage < 9) {
      var characterList = await repository.fetchList(currentPage);
      if (characterList != null) {
        localCharacters = [
          ...localCharacters,
          ...characterList,
        ];
        emit(CharactersLoaded(characters: localCharacters, page: currentPage));
      } else {
        emit(CharactersError());
      }
    }
  }

  void writeToBox(Character character) {
    // TODO implementar el uso de las cajas
    Box<Character> box = Hive.box(Strings.characterBox);
    box.put(character.id, character);
  }

  Character? getFromBox(int id) {
    Box<Character> box = Hive.box<Character>(Strings.characterBox);
    var character = box.get(id);
    return character is Character ? character : null;
  }
}
