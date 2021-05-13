import 'package:flutter/material.dart';
import 'package:new_flutter_app/txn_construction.dart';

class WithdrawHistory extends StatefulWidget {
  @override
  _WithdrawHistoryState createState() => _WithdrawHistoryState();
}

class _WithdrawHistoryState extends State<WithdrawHistory> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: TxnConstruction(date: 'ajbhsja',amount: ' mnbsjasb',),
      ),
    );
  }
}
