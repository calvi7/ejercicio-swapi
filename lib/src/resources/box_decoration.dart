import 'package:flutter/material.dart';

class BoxStyles {
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
  );
}
