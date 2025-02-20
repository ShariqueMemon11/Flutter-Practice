import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 26, 1, 85),
          Color.fromRGBO(14, 28, 44, 1),
        ),
      ),
    ),
  );
}
