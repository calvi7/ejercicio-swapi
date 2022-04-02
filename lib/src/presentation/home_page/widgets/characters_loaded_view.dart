import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intento_ejercicio1/src/data/models/character_model.dart';

import 'package:intento_ejercicio1/src/presentation/home_page/cubit/characters_cubit.dart';
import 'package:intento_ejercicio1/src/resources/resources.dart';

import 'character_card.dart';

class CharactersLoadedView extends StatelessWidget {
  final List<Character> characters;
  const CharactersLoadedView({
    Key? key,
    required this.characters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final charactersBloc = BlocProvider.of<CharactersCubit>(context);
    int page = charactersBloc.currentPage;

    double height = MediaQuery.of(context).size.height;
    print(page);
    return Column(
      children: [
        Container(
          height: height * 0.8,
          decoration: const BoxDecoration(color: Colors.indigoAccent),
          margin: EdgeInsets.zero,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: characters.length,
            itemBuilder: (context, index) {
              return CharacterCard(
                character: characters[index],
              );
            },
          ),
        ),
        (page < 8)
            ? GestureDetector(
                onTap: () =>
                    BlocProvider.of<CharactersCubit>(context).fetchList(),
                child: const Center(
                  child: Card(
                    color: Colors.indigo,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(Strings.cargarMas),
                    ),
                  ),
                ),
              )
            : const Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(Strings.noHayMas),
                ),
              )
      ],
    );
  }
}
