import "package:flutter/material.dart";

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var changableText = 'hi';
    var press = 'press here';
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
                  Text(changableText),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(press),
                  ),
                ],
              ),
            )));
  }
}
