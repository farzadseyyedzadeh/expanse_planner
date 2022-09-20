import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransactions(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              // onChanged: (val) {
              //   titleInput = val;
              // },
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              // onChanged: (val) {
              //   amountInput = val;
              // },
              controller: amountController,
            ),
            TextButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple)),
              // onPressed: () {
              //   print(titleInput);
              //   print(amountInput);
              // },
              onPressed: () {
                addTx(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text("Add Transaction"),
            ),
          ],
        ),
      ),
    );
  }
}
