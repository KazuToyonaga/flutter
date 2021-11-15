import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionNumber = 0;
  int _totalScore = 0;
  var questions = [
    {
      'questionText': 'What\'s your favorate food?',
      'answer': [
        {'text': 'Rice', 'score': 5},
        {'text': 'Bread', 'score': 4},
        {'text': 'Noodles', 'score': 2},
        {'text': 'Pasta', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorate animal?',
      'answer': [
        {'text': 'Lion', 'score': 5},
        {'text': 'Sheep', 'score': 3},
        {'text': 'Cow', 'score': 1},
        {'text': 'Chicken', 'score': 4},
      ]
    },
    {
      'questionText': 'What\'s your favorate food?',
      'answer': [
        {'text': 'Rice', 'score': 5},
        {'text': 'Bread', 'score': 4},
        {'text': 'Noodles', 'score': 2},
        {'text': 'Pasta', 'score': 1},
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);
    setState(() {
      questionNumber += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      questionNumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: questionNumber < questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: questions,
                    questionNumber: questionNumber,
                  )
                : Result(
                    resetQuiz: _resetQuiz,
                    totalScore: _totalScore,
                  )));
  }
}
