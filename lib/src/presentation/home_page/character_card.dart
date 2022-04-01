import 'package:flutter/cupertino.dart';
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
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Colors.red,
            ],
          )),
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: size.width - 50),
        child: Text(
          character.name,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
