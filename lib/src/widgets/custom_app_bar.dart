import 'package:flutter/material.dart';
import 'package:intento_ejercicio1/src/resources/resources.dart';

class CustomAppBar {
  final CustomTextStyles _customTextStyles = CustomTextStyles();

  PreferredSizeWidget appBar() => AppBar(
        title: Text(
          'Hola',
          style: _customTextStyles.appBarTextStyle,
        ),
        elevation: 0,
        foregroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      );
}
