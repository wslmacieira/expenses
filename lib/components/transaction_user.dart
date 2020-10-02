import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Playstation 5',
      value: 3500.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Geladeira nova',
      value: 2000.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta #01',
      value: 2000.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta #02',
      value: 2000.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Conta #03',
      value: 2000.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Conta #04',
      value: 2000.00,
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
      children: <Widget> [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
