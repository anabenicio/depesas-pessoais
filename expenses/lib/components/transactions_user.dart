import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: 't1', title: 'Novo Xbox', value: 5000.00, date: DateTime.now()),
    Transaction(id: 't2', title: 'FIFA 23', value: 300.00, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionList(_transactions), TransactionForm()],
    );
  }
}
