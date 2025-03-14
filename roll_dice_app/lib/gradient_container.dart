import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 280, top: 50),
            child: Text(
              "Dice Roller App",
              style: TextStyle(
                color: const Color.fromARGB(255, 175, 173, 217),
                fontSize: 28,
              ),
            ),
          ),
          DiceRoller(),
        ],
      ),
    );
  }
}
