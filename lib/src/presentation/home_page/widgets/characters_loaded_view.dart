import 'package:flutter/material.dart';
import 'package:intento_ejercicio1/src/data/models/character_model.dart';

import 'character_card.dart';

class CharactersLoadedView extends StatelessWidget {
  final List<Character> characters;
  const CharactersLoadedView({
    Key? key,
    required this.characters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
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
    );
  }
}
