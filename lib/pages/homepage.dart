import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("call logs"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello World"),
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
