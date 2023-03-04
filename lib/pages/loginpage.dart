import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          "login page",
          style: TextStyle(
            fontSize: 20,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
