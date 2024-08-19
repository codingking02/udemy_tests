import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class Roller extends StatefulWidget {
  Roller({super.key});
  var activeDiceImage = 'assets/dice-1.png';
  @override
  State<Roller> createState() => _RollerState();
}

class _RollerState extends State<Roller> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          widget.activeDiceImage,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28.0,
            ),
            padding: const EdgeInsets.only(
              top: 20,
            ),
          ),
          child: const Text(
            'Roll Dice',
          ),
        ),
      ],
    );
  }

  void rollDice() {
    int randomno = randomizer.nextInt(6) + 1;
    widget.activeDiceImage = 'assets/dice-$randomno.png';
    setState(() {});
  }
}
