import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/routs.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";
  bool v1 = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assest/images/loginim.png",
              fit: BoxFit.fill,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter passward",
                        labelText: "password",
                      ),
                    ),
                    SizedBox(height: 20.0),
                    

                    InkWell(
                      onTap: () async {
                        setState(() {
                          v1 = true;
                        });
                        await Future.delayed(Duration(seconds: 2));
                        Navigator.pushNamed(context, Myrouts.homepage);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: v1 ? 50 : 100,
                        height: 40,
                        alignment: Alignment.center,
                        child: v1
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          //(similar use) shape: v1 ? BoxShape.circle : BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(v1 ? 20 : 10),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //     child: Text("Login"),
                    //     style: TextButton.styleFrom(
                    //         iconColor: Colors.brown,
                    //         minimumSize: Size(100, 40)),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, Myrouts.homepage);
                    //     }),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
