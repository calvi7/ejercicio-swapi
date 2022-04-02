import 'package:flutter/material.dart';
import 'package:intento_ejercicio1/src/resources/resources.dart';

class CustomAppBar {
  final CustomTextStyles _customTextStyles = CustomTextStyles();

  PreferredSizeWidget appBar({
    required title,
    required ThemeData theme,
  }) =>
      AppBar(
        iconTheme: theme.appBarTheme.iconTheme,
        title: Text(
          title,
          style: _customTextStyles.appBarTextStyle,
        ),
        elevation: 0,
        foregroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      );
}
