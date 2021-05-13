import 'package:flutter/material.dart';
import 'package:new_flutter_app/txn_construction.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: TxnConstruction(date: 'ajbhsja',amount: ' mnbsjasb',),
      ),
    );
  }
}
