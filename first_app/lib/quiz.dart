// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionNumber;
  final Function answerQuestion;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionNumber]['questionText'] as String),
        ...(questions[questionNumber]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }),
      ],
    );
  }
}
