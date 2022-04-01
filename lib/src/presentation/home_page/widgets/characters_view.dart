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

          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 20),
            shrinkWrap: true,
            itemCount: characterList.length,
            itemBuilder: ((context, index) => Column(
                  children: [
                    CharacterCard(character: characterList[index]),
                    const SizedBox(height: 10),
                  ],
                )),
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
