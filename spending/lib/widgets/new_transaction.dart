import 'package:flutter/material.dart';

import './list_transaction.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function submit;

  NewTransaction(this.submit);

  void submitData() {
    final titleSubmit = titleController.text;
    final amountSubmit = int.tryParse(amountController.text);

    if (titleSubmit.isEmpty || amountSubmit! <= 0) {
      return;
    }

    submit(titleSubmit, amountSubmit);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                  controller: titleController,
                  onSubmitted: (_) => submitData(),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  controller: amountController,
                  onSubmitted: (_) => submitData(),
                  keyboardType: TextInputType.number,
                ),
                ElevatedButton(onPressed: submitData, child: Text('Submit'))
              ],
            )));
  }
}
