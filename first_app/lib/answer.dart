import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handler;
  final String option;
  Answer(this.handler, this.option);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(option), color: Colors.blue, onPressed: handler),
    );
  }
}
