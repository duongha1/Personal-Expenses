import 'package:flutter/material.dart';
import 'package:personal_expenses/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      title: 'Flutter App',
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction?> transactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New T-shirt', amount: 39.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyApp')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            child: Container(
              child: Text('hi'),
              width: double.infinity,
              color: Colors.blue,
            ),
            elevation: 5,
          ),
          Card(
            child: Container(
              child: Text('List'),
            ),
            elevation: 5,
          ),
          Column(
            children: transactions.map((transaction) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        transaction?.amount.toString() ?? '',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromRGBO(255, 170, 0, 1)),
                      ),
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(255, 170, 0, 1), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transaction?.title ?? '',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(transaction?.date.toString() ?? '',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
