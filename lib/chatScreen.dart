import 'package:chat_app/message.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];
  void _handelSubmitter(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(text: text);
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: IconThemeData(color: Colors.tealAccent.shade700),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                decoration:
                    const InputDecoration.collapsed(hintText: "Send a message"),
                controller: _textController,
                onSubmitted: _handelSubmitter,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  _handelSubmitter(_textController.text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView.builder(
            itemBuilder: (_, int index) => _messages[index],
            itemCount: _messages.length,
            reverse: true,
            padding: EdgeInsets.all(8.0),
          ),
        ),
        Divider(
          height: 1.0,
        ),
        Container(
          decoration: BoxDecoration(color: Theme.of(context).cardColor),
          child: _textComposerWidget(),
        ),
      ],
    );
  }
}
