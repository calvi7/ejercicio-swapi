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
    return GestureDetector(
      onTap: () {},
      child: Container(
        // Container decoration
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.green,
              ],
            )),
        child: ConstrainedBox(
          // Character's name
          constraints: BoxConstraints(
            minWidth: size.width * 0.8,
            maxWidth: 800,
          ),
          child: Text(
            character.name,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
