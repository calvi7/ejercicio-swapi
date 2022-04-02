import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intento_ejercicio1/src/data/models/character_model.dart';
import 'package:intento_ejercicio1/src/resources/resources.dart';

class CharacterDetails extends StatelessWidget {
  final Character character;
  CharacterDetails({Key? key, required this.character}) : super(key: key);

  final customTextStyles = CustomTextStyles();

  @override
  Widget build(BuildContext context) {
    final appBarTheme = Theme.of(context).appBarTheme.titleTextStyle;
    final titleStyle = TextStyle(
      color: appBarTheme!.color,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
    return Column(
      children: [
        ListTile(
          leading: const Icon(
            CupertinoIcons.person,
            color: Colors.deepPurple,
          ),
          title: Text(
            'Sexo',
            style: titleStyle,
          ),
          subtitle: Text(
            character.gender.toUpperCase(),
            style: customTextStyles.listTileSubtitleStyle,
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.palette_outlined,
            color: Colors.deepPurple,
          ),
          title: Text(
            "Color de Piel",
            style: titleStyle,
          ),
          subtitle: Text(
            character.skinColor.toUpperCase(),
            style: customTextStyles.listTileSubtitleStyle,
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.palette_outlined,
            color: Colors.deepPurple,
          ),
          title: Text(
            "Color de Pelo",
            style: titleStyle,
          ),
          subtitle: Text(
            character.hairColor.toUpperCase(),
            style: customTextStyles.listTileSubtitleStyle,
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.palette_outlined,
            color: Colors.deepPurple,
          ),
          title: Text(
            "Color de Ojos",
            style: titleStyle,
          ),
          subtitle: Text(
            character.eyeColor.toUpperCase(),
            style: customTextStyles.listTileSubtitleStyle,
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.height,
            color: Colors.deepPurple,
          ),
          title: Text(
            "Altura",
            style: titleStyle,
          ),
          subtitle: Text(
            character.formattedHeight.toUpperCase(),
            style: customTextStyles.listTileSubtitleStyle,
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.monitor_weight_outlined,
            color: Colors.deepPurple,
          ),
          title: Text(
            "Masa",
            style: titleStyle,
          ),
          subtitle: Text(
            character.formattedMass.toUpperCase(),
            style: customTextStyles.listTileSubtitleStyle,
          ),
        ),
      ],
    );
  }
}
