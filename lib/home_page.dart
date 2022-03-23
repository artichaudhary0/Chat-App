import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chatScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("Frenzyy Chat"),
      ),
      body: ChatScreen(),
    );
  }
}
