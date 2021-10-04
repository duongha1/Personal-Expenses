import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses/assets/color.dart';

class TransactionList extends StatelessWidget {
  final ColorConstants color = new ColorConstants();

  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        //for long list, we use ListView.builder()
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                      '€ ${transactions[index]?.amount.toStringAsFixed(2)}' ??
                          '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: color.primaryColor,
                      )),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: color.primaryColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transactions[index]?.title ?? '',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(DateFormat().format(transactions[index]!.date),
                        style: TextStyle(color: Colors.grey)),
                  ],
                )
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
