import 'package:quiz/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    question: 'What is Flutter?',
    answers: [
      'A programming language',
      'A mobile app development framework',
      'A database management system',
      'A web development framework',
    ],
    correctAnswer: 'A mobile app development framework',
  ),
  QuizQuestion(
    question: 'Which programming language is primarily used for Flutter development?',
    answers: [
      'Dart',
      'Java',
      'Python',
      'Swift',
    ],
    correctAnswer: 'Dart',
  ),
  QuizQuestion(
    question: 'What is the main advantage of using Flutter for mobile app development?',
    answers: [
      'Native performance',
      'Cross-platform compatibility',
      'Advanced UI animations',
      'Built-in machine learning capabilities',
    ],
    correctAnswer: 'Cross-platform compatibility',
  ),
  QuizQuestion(
    question: 'How does Flutter achieve cross-platform compatibility?',
    answers: [
      'By using a virtual machine',
      'By compiling to native code',
      'By leveraging web technologies',
      'By using cloud-based rendering',
    ],
    correctAnswer: 'By compiling to native code',
  ),
  QuizQuestion(
    question: 'What is a widget in Flutter?',
    answers: [
      'A layout component',
      'A data storage class',
      'A programming language construct',
      'A user interface element',
    ],
    correctAnswer: 'A user interface element',
  ),
  QuizQuestion(
    question: 'Which widget is used to create a button in Flutter?',
    answers: [
      'Scaffold',
      'Text',
      'Column',
      'RaisedButton',
    ],
    correctAnswer: 'RaisedButton',
  ),
  QuizQuestion(
    question: 'What is the purpose of the MaterialApp widget in a Flutter app?',
    answers: [
      'To define the app\'s theme',
      'To handle routing and navigation',
      'To provide localization support',
      'To manage stateful widgets',
    ],
    correctAnswer: 'To handle routing and navigation',
  ),
  QuizQuestion(
    question: 'What is hot reload in Flutter?',
    answers: [
      'A debugging technique',
      'A performance optimization',
      'A mechanism for automatic updates',
      'A tool for generating documentation',
    ],
    correctAnswer: 'A mechanism for automatic updates',
  ),
  QuizQuestion(
    question: 'How can you handle user input in Flutter?',
    answers: [
      'By using the GestureDetector widget',
      'By using the AnimationController class',
      'By using the http package',
      'By using the SharedPreferences class',
    ],
    correctAnswer: 'By using the GestureDetector widget',
  ),
  QuizQuestion(
    question: 'How can you make an HTTP request in Flutter?',
    answers: [
      'By using the http package',
      'By using the shared_preferences package',
      'By using the path_provider package',
      'By using the url_launcher package',
    ],
    correctAnswer: 'By using the http package',
  ),
];
