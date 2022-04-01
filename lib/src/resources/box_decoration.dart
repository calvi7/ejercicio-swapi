import 'package:flutter/material.dart';

class BoxStyles {
  BoxDecoration cardContainer = const BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    ),
  );
}
