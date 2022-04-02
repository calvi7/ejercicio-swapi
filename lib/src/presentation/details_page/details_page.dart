import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intento_ejercicio1/src/data/models/character_model.dart';
import 'package:intento_ejercicio1/src/widgets/custom_app_bar.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key}) : super(key: key);

  final customAppBar = CustomAppBar();

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
            title: const Text('Sexo'),
            subtitle: Text(character.gender.toUpperCase()),
          ),
          ListTile(
            leading: const Icon(
              Icons.palette_outlined,
              color: Colors.deepPurple,
            ),
            title: const Text("Color de Piel"),
            subtitle: Text(character.skinColor.toUpperCase()),
          ),
          ListTile(
            leading: const Icon(
              Icons.palette_outlined,
              color: Colors.deepPurple,
            ),
            title: const Text("Color de Pelo"),
            subtitle: Text(character.hairColor.toUpperCase()),
          ),
          ListTile(
            leading: const Icon(
              Icons.palette_outlined,
              color: Colors.deepPurple,
            ),
            title: const Text("Color de Ojos"),
            subtitle: Text(character.eyeColor.toUpperCase()),
          ),
          ListTile(
            leading: const Icon(
              Icons.height,
              color: Colors.deepPurple,
            ),
            title: const Text("Altura"),
            subtitle: Text(character.formattedHeight.toUpperCase()),
          ),
          ListTile(
            leading: const Icon(
              Icons.monitor_weight_outlined,
              color: Colors.deepPurple,
            ),
            title: const Text("Masa"),
            subtitle: Text(character.formattedMass.toUpperCase()),
          ),
        ],
      ),
    );
  }
}
