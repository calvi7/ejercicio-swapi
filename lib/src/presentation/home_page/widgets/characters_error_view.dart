import 'package:flutter/material.dart';
import 'package:intento_ejercicio1/src/resources/strings.dart';

class CharactersErrorView extends StatelessWidget {
  const CharactersErrorView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [Text(Strings.error)],
    );
  }
}
