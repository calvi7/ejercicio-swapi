import 'package:flutter/material.dart';
import 'resources.dart';

class CustomBoxStyles {
  static final _boxShadows = CustomBoxShadows();

  BoxDecoration cardContainer = const BoxDecoration(
    color: Colors.indigo,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    ),
  );

  BoxDecoration characterCard = BoxDecoration(
    borderRadius: BorderRadius.circular(24),
    color: const Color.fromARGB(255, 26, 32, 38),
    boxShadow: [_boxShadows.cardBoxShadow],
  );
}
