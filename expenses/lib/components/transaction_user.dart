import 'dart:math';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './transaction_form.dart';
import './transaction_list.dart';

class TransactionUser extends StatefulWidget {
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'PS4',
      value: 2300.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'XBox One',
      value: 2200.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Nintendo Switch',
      value: 2700.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'XBox Series X',
      value: 4200.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'XBox Series X',
      value: 4200.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'XBox Series S',
      value: 3400.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'PS5',
      value: 4700.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't8',
      title: 'Stadia',
      value: 200.00,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
