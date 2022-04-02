import 'package:flutter/material.dart';

import 'package:intento_ejercicio1/src/widgets/custom_app_bar.dart';
import 'widgets/characters_state_view.dart';

import 'package:intento_ejercicio1/src/resources/resources.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final BoxStyles boxStyles = BoxStyles();
  final CustomAppBar customAppBar = CustomAppBar();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar.appBar(
        title: Strings.appBarTitle,
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Text(Strings.appBarTitle),
      ),
      body: CharactersStateView(),
    );
  }
}
