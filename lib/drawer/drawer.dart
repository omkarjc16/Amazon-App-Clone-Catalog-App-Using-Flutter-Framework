import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/loginpage.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});
  final imageurl =
      "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs2/153452787/original/367d9c2a98bb83eb1b32fca888c3b307636ab5c9/make-a-kawai-or-anime-profile-picture-of-you.png";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("omkar"),
                  arrowColor: Colors.green,
                  accountEmail: Text("Onkarchavan773@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ),
                )),
            ListTile(
                leading: Icon(Icons.home),
                iconColor: Colors.white,
                title: Text(
                  "Home",
                  textScaleFactor: 1,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
                 ListTile(
                leading: Icon(CupertinoIcons.profile_circled),
                iconColor: Colors.white,
                title: Text(
                  "profile",
                  textScaleFactor: 1,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
                ListTile(
                leading: Icon(CupertinoIcons.mail),
                iconColor: Colors.white,
                title: Text(
                  "Mail",
                  textScaleFactor: 1,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
