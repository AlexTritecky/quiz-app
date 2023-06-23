import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        ),
        shadowColor: MaterialStateColor.resolveWith(
          (states) => Colors.deepPurpleAccent,
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(255, 10, 180, 227),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Quiz()),
        );
      },
      icon: const Icon(Icons.play_arrow),
      label: const Text('Start Quiz'),
    );
  }
}
