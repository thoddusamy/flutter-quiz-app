import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.changeScreen, {super.key});

  final Function() changeScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
        ),
        const SizedBox(height: 40),
        const Text(
          "Learn Flutter the easy way!",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        const SizedBox(height: 40),
        OutlinedButton.icon(
          onPressed: changeScreen,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            "Start Quiz",
          ),
        ),
      ],
    );
  }
}
