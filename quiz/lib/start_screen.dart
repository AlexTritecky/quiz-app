import 'package:flutter/material.dart';
import 'package:quiz/text_style.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 30),
          const StyleText('Learn Flutter in a Fun Way'),
          const SizedBox(height: 40),
          ElevatedButton.icon(
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
            onPressed: startQuiz,
            icon: const Icon(Icons.play_arrow),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
