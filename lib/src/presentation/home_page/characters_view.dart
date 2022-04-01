import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intento_ejercicio1/src/cubit/characters_cubit.dart';
import 'package:intento_ejercicio1/src/presentation/home_page/character_card.dart';

class CharactersView extends StatelessWidget {
  const CharactersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CharactersCubit>(context).fetchList();
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is CharactersLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is CharactersLoaded) {
          final characterList = state.characters;

          return ListView.builder(
            itemCount: characterList.length,
            itemBuilder: ((context, index) =>
                CharacterCard(character: characterList[index])),
          );
        } else {
          return Container(color: Colors.red);
        }
      },
    );
  }
}
