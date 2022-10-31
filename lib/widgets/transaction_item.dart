import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key? key,
    required this.transactions,
    required this.delTransaction,
  }) : super(key: key);

  final Transaction transactions;
  final Function delTransaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: FittedBox(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Text('Rp. ${transactions.amount}'),
            ),
          ),
        ),
        title: Text(transactions.title,
            style: Theme.of(context).textTheme.headline6),
        subtitle: Text(
          DateFormat.yMEd().format(transactions.date),
        ),
        trailing: MediaQuery.of(context).size.width > 460
            ? TextButton.icon(
                onPressed: () => delTransaction(transactions.id),
                icon: Icon(Icons.delete),
                label: Text('Delete'),
              )
            : IconButton(
                icon: const Icon(
                  Icons.delete,
                ),
                color: Theme.of(context).errorColor,
                onPressed: () => delTransaction(transactions.id),
              ),
      ),
    );
  }
}
