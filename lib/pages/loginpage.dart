import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assest/images/loginim.png",
            fit: BoxFit.fill,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
                color: Colors.purple,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter passward",
                      labelText: "password",
                    ),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(iconColor: Colors.brown),
                      onPressed: () {
                        routes:
                        {
                          (context) => "/homepage";
                        }
                      }),
                ],
              )),
        ],
      ),
    );
  }
}
