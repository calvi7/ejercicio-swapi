import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/characters_cubit.dart';
import 'character_card.dart';

import 'package:intento_ejercicio1/src/resources/resources.dart';

class CharactersView extends StatelessWidget {
  CharactersView({Key? key}) : super(key: key);

  final Strings strings = Strings();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CharactersCubit>(context).fetchList();
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        // Is it waiting initial Api Fetch?
        if (state is CharactersLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );

          // Api has been Fetched
        } else if (state is CharactersLoaded) {
          final characterList = state.characters;

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.zero,
            color: Colors.indigoAccent,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 20),
              itemCount: characterList.length,
              itemBuilder: ((context, index) => CharacterCard(
                    character: characterList[index],
                  )),
            ),
          );
        } else {
          // Error
          return Column(
            children: const [Text(Strings.error)],
          );
        }
      },
    );
  }
}
