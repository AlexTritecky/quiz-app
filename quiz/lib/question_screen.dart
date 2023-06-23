import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/text_style.dart';
import 'package:quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StyleText(currentQuestion.question),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((text) {
              const SizedBox(height: 20);
              return AnswerButton(
                answerText: text,
                onTap: () {
                  answerQuestion(text);
                },
              );
            }),
          ],
        ));
  }
}
