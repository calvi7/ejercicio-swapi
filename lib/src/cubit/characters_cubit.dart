import 'package:bloc/bloc.dart';
import 'package:intento_ejercicio1/src/data/models/character_model.dart';
import 'package:intento_ejercicio1/src/data/repository.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final Repository repository;

  CharactersCubit({
    required this.repository,
  }) : super(CharactersInitial());

  void fetchList() async {
    emit(CharactersLoading());
    var characterList = await repository.fetchList();

    if (characterList != null) {
      emit(CharactersLoaded(characters: characterList));
    } else {
      emit(CharactersError());
    }
  }
}
