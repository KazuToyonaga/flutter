import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './list_transaction.dart';
import './new_transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  @override
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', amount: 350, date: DateTime.now(), title: 'coca cola'),
    Transaction(
        id: 't2', amount: 200, date: DateTime.now(), title: 'Dr.pepper'),
    Transaction(
        id: 't3', title: 'root beer', amount: 200, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, int txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      ListTransaction(_userTransaction)
    ]);
  }
}
