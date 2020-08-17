import 'dart:math';

import 'package:flutter/material.dart';
import 'package:expenses/components/transaction_form.dart';
import './components/transaction_list.dart';
import './components/transaction_form.dart';
import './models/transaction.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  _openTransactionModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return TransactionForm(null);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (() => _openTransactionModal(context)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: Text('Gráfico'),
              ),
            ),
            TransactionList(_transactions),  
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (() => _openTransactionModal(context)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
