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
        // Is it waiting initial Api Fetch ?
        if (state is CharactersLoading) {
          return const Center(child: CircularProgressIndicator());

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
          return Container(color: Colors.red);
        }
      },
    );
  }
}
