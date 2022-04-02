import 'package:flutter/material.dart';

import 'package:intento_ejercicio1/src/data/models/character_model.dart';
import 'package:intento_ejercicio1/src/resources/resources.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  CharacterCard({
    Key? key,
    required this.character,
  }) : super(key: key);

  final customTextStyles = CustomTextStyles();
  final boxStyles = CustomBoxStyles();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        const SizedBox(height: 10),
        InkWell(
          onTap: () => Navigator.pushNamed(
            context,
            'details',
            arguments: character,
          ),
          focusColor: Colors.deepPurple,
          child: Container(
            // Container decoration
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            decoration: boxStyles.characterCard,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: size.width * 0.8,
                maxWidth: 800,
              ),
              child: Text(
                character.name,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: customTextStyles.cardTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
