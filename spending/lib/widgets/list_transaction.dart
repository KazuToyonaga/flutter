// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class ListTransaction extends StatelessWidget {
  final List<Transaction> transaction;

  ListTransaction(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 498,
        width: double.infinity,
        child: transaction.isEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Text('No transaction available.'),
                    Container(
                        height: 300,
                        child: Image.asset(
                          'assets/images/waiting.png',
                          fit: BoxFit.cover,
                        ))
                  ])
            : ListView.builder(
                itemBuilder: (ctx, index) {
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
                                border: Border.all(
                                    color: Theme.of(context).primaryColor)),
                            padding: EdgeInsetsDirectional.all(10),
                            child: Text(
                              '${transaction[index].amount}円',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                transaction[index].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                  DateFormat('yMMMMd')
                                      .format(transaction[index].date),
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  )),
                            ],
                          )
                        ],
                      )));
                },
                itemCount: transaction.length,
              ));
  }
}
