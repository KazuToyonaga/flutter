import "package:flutter/material.dart";

import './text.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var changableText = 'Text will be added...';
  var press = 'press here';
  void changeText() {
    setState(() {
      changableText += 'text is added.';
      print(changableText);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)),
        home: Scaffold(
            appBar: AppBar(
              title: Text('First Assignment'),
            ),
            body: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: changeText,
                    child: Text(press),
                  ),
                  textText(changableText),
                ],
              ),
            )));
  }
}
