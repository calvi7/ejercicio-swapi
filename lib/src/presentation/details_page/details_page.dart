import 'package:flutter/material.dart';
import 'package:intento_ejercicio1/src/widgets/custom_app_bar.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO get arguments

    return Scaffold(
      appBar: CustomAppBar().appBar(title: ''),
    );
  }
}
