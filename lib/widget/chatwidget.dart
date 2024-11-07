import 'package:flutter/material.dart';

class Chatwidget extends StatefulWidget {
  const Chatwidget({super.key});

  @override
  State<Chatwidget> createState() => _ChatwidgetState();
}

class _ChatwidgetState extends State<Chatwidget> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];
  void _sendMessage() {
    final text = _controller.text;
    if (text.isNotEmpty) {
      setState(() {
        _messages.add(text);
      });
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(_messages[index]),
                      ],
                    ));
                  })),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter message',
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 0,
                    child: IconButton(
                      icon: const Icon(Icons.send, color: Colors.blue),
                      onPressed: _sendMessage,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
