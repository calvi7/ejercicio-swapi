import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:intento_ejercicio1/src/data/models/character_model.dart';
import 'package:intento_ejercicio1/src/data/repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final Repository repository;

  CharactersCubit({
    required this.repository,
  }) : super(CharactersLoading());

  void fetchList() async {
    var characterList = await repository.fetchList();

    if (characterList != null) {
      print(state);
      if (state is CharactersLoaded) {
        emit(
          CharactersLoaded(
            characters: [...characterList],
          ),
        );
      } else {
        emit(CharactersLoaded(
          characters: characterList,
        ));
      }
    } else {
      emit(CharactersError());
    }
  }
}
