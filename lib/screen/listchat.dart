import 'package:flutter/material.dart';

class Listchat extends StatefulWidget {
  const Listchat({super.key});

  @override
  State<Listchat> createState() => _ListchatState();
}

class _ListchatState extends State<Listchat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatlist'),
      ),
      body: Expanded(
          child: ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('test'),
          );
        },
      )),
    );
  }
}
