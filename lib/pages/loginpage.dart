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
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        v1 = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, Myrouts.homepage);
      setState(() {
        v1 = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
            key: _formkey,
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
                  padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
                  child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "username",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter the valid username";
                        }
                        return null;
                      },
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
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter the valid password";
                        } else if (value.length<6) {
                          return "passwaord Length must be 6 or above";
                        }
                          return null;
                        
                      },
                    ),
                    SizedBox(height: 20.0),
                    Material(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(v1 ? 20 : 10),
                      child: InkWell(
                        onTap: () => moveToHome(context),
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

                          //(similar use) shape: v1 ? BoxShape.circle : BoxShape.rectangle,
                        ),
                      ),
                    ),
                  ]
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
      ),
    );
  }
}
