// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';
import './user_transaction.dart';

class ListTransaction extends StatelessWidget {
  final List<Transaction> transaction;

  ListTransaction(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 498,
        child: ListView.builder(
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
                          border: Border.all(color: Colors.purple)),
                      padding: EdgeInsetsDirectional.all(10),
                      child: Text(
                        '${transaction[index].amount}円',
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
