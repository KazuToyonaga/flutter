import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Card(
          color: Theme.of(context).primaryColor,
          child: Text(
            'chart',
            textAlign: TextAlign.center,
          ),
        ));
  }
}
