import 'package:flutter/material.dart';

class textText extends StatelessWidget {
  final String solidText;

  textText(this.solidText);

  @override
  Widget build(BuildContext context) {
    return Text(solidText);
  }
}
