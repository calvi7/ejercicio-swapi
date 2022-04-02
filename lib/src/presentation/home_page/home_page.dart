import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intento_ejercicio1/src/cubit/theme_cubit.dart';

import 'package:intento_ejercicio1/src/widgets/custom_app_bar.dart';
import 'widgets/characters_state_view.dart';

import 'package:intento_ejercicio1/src/resources/resources.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final CustomBoxStyles boxStyles = CustomBoxStyles();
  final customAppBar = CustomAppBar();

  @override
  Widget build(BuildContext context) {
    final themeCubit = BlocProvider.of<ThemeCubit>(context);
    return Scaffold(
      appBar: customAppBar.appBar(
        title: Strings.appBarTitle,
        theme: themeCubit.state.theme,
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Text(Strings.appBarTitle),
      ),
      body: CharactersStateView(),
    );
  }
}
