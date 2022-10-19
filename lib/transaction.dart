import 'package:flutter/foundation.dart';

class Transaction {
  //properties
  String id;
  String title;
  double amount;
  DateTime date;

  //constructor
  Transaction(
      {required this.id,
      required this.title,
      required this.amount,
      required this.date});
}
