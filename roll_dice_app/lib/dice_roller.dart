import 'dart:math';
import 'package:flutter/material.dart';
import 'package:roll_dice_app/style_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DicerollerState();
  }
}

class _DicerollerState extends State<DiceRoller> {
  var diceImg = "assets/dice-2.png";
  var diceImg2 = "assets/dice-1.png";

  void rolldice() {
    setState(() {
      int randomNumber = Random().nextInt(6) + 1;
      int randomNumber2 = Random().nextInt(6) + 1;
      diceImg = "assets/dice-$randomNumber.png";
      diceImg2 = "assets/dice-$randomNumber2.png";
    });
  }

  void resetdise() {
    setState(() {
      diceImg = "assets/dice-1.png";
      diceImg2 = "assets/dice-1.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(diceImg, width: 150),
            Image.asset(diceImg2, width: 150),
          ],
        ),
        const SizedBox(height: 40), // Adds spacing
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: rolldice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28),
                padding: const EdgeInsets.symmetric(horizontal: 25),
              ),
              child: const Text("Roll Dice"),
            ),
            TextButton(
              onPressed: resetdise,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28),
              ),
              child: const Text("Reset Dice"),
            ),
          ],
        ),
      ],
    );
  }
}
