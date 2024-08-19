import 'package:flutter/material.dart';
import 'package:udemy_tests/roller.dart';

class GardientContainer extends StatelessWidget {
  const GardientContainer(
      {required this.text,
      super.key,
      required this.color1,
      required this.color2});
  const GardientContainer.purple({required this.text, super.key})
      : color1 = const Color.fromARGB(255, 146, 96, 233),
        color2 = const Color.fromARGB(255, 25, 2, 65);

  final String text;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Roller(),
      ),
    );
  }
}
