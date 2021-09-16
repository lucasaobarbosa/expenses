import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({ Key? key }) : super(key: key);

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta #1',
      value: 211.20,
      date: DateTime.now(),
    ),
        Transaction(
      id: 't2',
      title: 'Conta #2',
      value: 211.20,
      date: DateTime.now(),
    ),
        Transaction(
      id: 't2',
      title: 'Conta #3',
      value: 211.20,
      date: DateTime.now(),
    ),
        Transaction(
      id: 't2',
      title: 'Conta #4',
      value: 211.20,
      date: DateTime.now(),
    ),
        Transaction(
      id: 't2',
      title: 'Conta #5',
      value: 211.20,
      date: DateTime.now(),
    ),
  ];

  _addTransaction (String title, double value){
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