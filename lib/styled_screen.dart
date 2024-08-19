import 'package:flutter/material.dart';
import 'package:udemy_tests/backgroundcolors.dart';

class StyledScreen extends StatelessWidget {
  const StyledScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GardientContainer.purple(
        text: 'Hello World!',
      ),
    );
  }
}
