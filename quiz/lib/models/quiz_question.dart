class QuizQuestion {
  final String question;
  final List<String> answers;
  final String correctAnswer;

  const QuizQuestion({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });

  List<String> getShuffledAnswers() {
    final answers = this.answers.toList();
    answers.shuffle();
    return answers;
  }
}
