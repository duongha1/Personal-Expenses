import 'package:flutter/material.dart';
import 'package:personal_expenses/assets/color.dart';
import 'package:personal_expenses/widgets/new_transaction.dart';
import 'package:personal_expenses/widgets/user_transaction.dart';

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
  final ColorConstants color = new ColorConstants();
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  // late String titleInput; //late is marked for null value
  // late String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(child: Text('hi'), color: Colors.blue, elevation: 5),
            ),
            Container(
              child: Card(
                child: Text('List items'),
                elevation: 5,
              ),
            ),
            UserTransaction()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
