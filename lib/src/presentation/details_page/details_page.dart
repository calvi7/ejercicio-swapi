import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intento_ejercicio1/src/data/models/character_model.dart';
import 'package:intento_ejercicio1/src/resources/resources.dart';
import 'package:intento_ejercicio1/src/widgets/custom_app_bar.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key}) : super(key: key);

  final customAppBar = CustomAppBar();
  final customTextStyles = CustomTextStyles();

  @override
  Widget build(BuildContext context) {
    final character = ModalRoute.of(context)!.settings.arguments as Character;

    return Scaffold(
      appBar: customAppBar.appBar(title: character.name),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(
              CupertinoIcons.person,
              color: Colors.deepPurple,
            ),
            title: Text(
              'Sexo',
              style: customTextStyles.listTileTitleStyle,
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
              style: customTextStyles.listTileTitleStyle,
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
              style: customTextStyles.listTileTitleStyle,
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
              style: customTextStyles.listTileTitleStyle,
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
              style: customTextStyles.listTileTitleStyle,
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
              style: customTextStyles.listTileTitleStyle,
            ),
            subtitle: Text(
              character.formattedMass.toUpperCase(),
              style: customTextStyles.listTileSubtitleStyle,
            ),
          ),
        ],
      ),
    );
  }
}
