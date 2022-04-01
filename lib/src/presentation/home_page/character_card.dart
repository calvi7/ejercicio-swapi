import 'package:flutter/material.dart';

import 'package:intento_ejercicio1/src/data/models/character_model.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(character.name);
  }
}
