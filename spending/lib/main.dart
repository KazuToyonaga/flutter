// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  List<Transaction> transactions = [
    Transaction(
        id: 't1', amount: 350, date: DateTime.now(), title: 'coca cola'),
    Transaction(
        id: 't2', amount: 200, date: DateTime.now(), title: 'Dr.pepper'),
    Transaction(
        id: 't3', title: 'root beer', amount: 200, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Spending'),
          ),
          body: Column(
              children: transactions.map((tx) {
            return Container(
                alignment: Alignment.center,
                child: Card(
                    child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple)),
                      padding: EdgeInsetsDirectional.all(10),
                      child: Text(
                        '${tx.amount}円',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(tx.date.toString(),
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            )),
                      ],
                    )
                  ],
                )));
          }).toList())),
    );
  }
}
