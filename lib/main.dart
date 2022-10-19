import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 12000,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Makan pentol',
      amount: 8000,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Bala bala',
      amount: 3000,
      date: DateTime.now(),
    ),
  ];

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Keuangan'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Text('Chart'),
                color: Colors.orange,
                elevation: 5,
              ),
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                  child: Text(tx.title),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
