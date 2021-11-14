import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handler;
  Answer(this.handler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text('answer 1'), color: Colors.blue, onPressed: handler),
    );
  }
}
