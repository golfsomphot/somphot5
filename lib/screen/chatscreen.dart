import 'package:flutter/material.dart';
import 'package:somphot5/widget/chatwidget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Chat Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Chatwidget(),
    );
  }
}
