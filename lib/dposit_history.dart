import 'package:flutter/material.dart';
import 'package:new_flutter_app/txn_construction.dart';

class DepositHistory extends StatefulWidget {
  @override
  _DepositHistoryState createState() => _DepositHistoryState();
}

class _DepositHistoryState extends State<DepositHistory> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: TxnConstruction(date: 'ajbhsja',amount: ' mnbsjasb',),
      ),
    );
  }
}
