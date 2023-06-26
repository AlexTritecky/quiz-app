import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestartQuiz});

  final List<String> chosenAnswers;
  final VoidCallback onRestartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].correctAnswer,
        'chosen_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = getSummaryData()
        .where((data) => data['correct_answer'] == data['chosen_answer'])
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  const TextSpan(
                    text: 'You answered ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: '$numCorrectAnswers',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 151, 30, 243)),
                  ),
                  const TextSpan(
                    text: ' out of ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: '$numTotalQuestions',
                    style: const TextStyle(color: Colors.orange),
                  ),
                  const TextSpan(
                    text: ' questions correctly!',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // const Text('List of answers and questions'),
            QuestionsSummary(getSummaryData()),
            const SizedBox(height: 30),
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
              onPressed: onRestartQuiz,
              icon: const Icon(Icons.replay),
              label: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
