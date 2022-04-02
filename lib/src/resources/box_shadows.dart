import 'package:flutter/material.dart';

class CustomBoxShadows {
  BoxShadow get cardBoxShadow => BoxShadow(
        color: Colors.black.withOpacity(0.5),
        spreadRadius: 3,
        blurRadius: 7,
        offset: const Offset(0, 3), // changes position of shadow
      );
}
