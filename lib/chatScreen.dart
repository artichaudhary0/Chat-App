import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Widget _textComposerWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: const TextField(
        decoration: InputDecoration.collapsed(hintText: "Send a message"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _textComposerWidget();
  }
}
