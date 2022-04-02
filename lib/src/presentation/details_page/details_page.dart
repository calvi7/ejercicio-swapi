import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intento_ejercicio1/src/cubit/theme_cubit.dart';
import 'package:intento_ejercicio1/src/data/models/character_model.dart';
import 'package:intento_ejercicio1/src/presentation/details_page/widgets/character_details.dart';
import 'package:intento_ejercicio1/src/resources/resources.dart';
import 'package:intento_ejercicio1/src/widgets/custom_app_bar.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key}) : super(key: key);

  final customAppBar = CustomAppBar();
  final customTextStyles = CustomTextStyles();

  @override
  Widget build(BuildContext context) {
    final character = ModalRoute.of(context)!.settings.arguments as Character;
    final themeCubit = BlocProvider.of<ThemeCubit>(context);

    return Scaffold(
      appBar: customAppBar.appBar(
        title: character.name,
        theme: themeCubit.state.theme,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CharacterDetails(character: character),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Card(
              color: Colors.indigo,
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Reportar',
                  style: customTextStyles.cardTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
