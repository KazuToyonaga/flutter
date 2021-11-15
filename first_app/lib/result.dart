import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  Result({required this.resetQuiz, required this.totalScore});

  String get resultPhrase {
    String resultText;

    if (totalScore < 5) {
      resultText = 'Well done!';
    } else if (totalScore < 10) {
      resultText = 'Great job!';
    } else {
      resultText = 'Nice try!';
    }
    return resultText;
  }

  String get finalScore {
    var score = 'You\'re score is $totalScore points!';
    return score;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(
        resultPhrase,
        style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(7.0, 7.0),
                blurRadius: 5.0,
                color: Colors.grey,
              ),
            ]),
      ),
      Text(
        finalScore,
        style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(5.0, 5.0),
                blurRadius: 3.0,
                color: Colors.grey,
              ),
            ]),
      ),
      TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.orange),
          ),
          onPressed: resetQuiz,
          child: Text('Click to reset.'))
    ]));
  }
}
