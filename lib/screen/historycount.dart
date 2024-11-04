import 'package:flutter/material.dart';

class Historycount extends StatefulWidget {
  const Historycount({super.key});

  @override
  State<Historycount> createState() => _HistorycountState();
}

class _HistorycountState extends State<Historycount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text(
        'History',
        style: TextStyle(color: Colors.white),
      ),
    ));
  }
}
