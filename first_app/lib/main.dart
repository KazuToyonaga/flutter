import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  void _answerQuestion() {
    setState(() {
      questionNumber += 1;
    });
    print('answered');
    print(questionNumber);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorate food?',
        'answer': ['Rice', 'Bread', 'Noodles']
      },
      {
        'questionText': 'What\'s your favorate animal?',
        'answer': ['Lion', 'Sheep', 'Cow']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[questionNumber]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
