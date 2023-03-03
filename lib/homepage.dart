import 'dart:html';

import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("call app"),
      ),
      body: Center(
        child: Container(
          child: Text("hello world"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
