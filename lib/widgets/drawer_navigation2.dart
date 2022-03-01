// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:work3/screen/login_screen.dart';

import 'package:work3/screen/see_all.dart';
import 'package:work3/screen/see_all2.dart';

class DrawerNavagation2 extends StatelessWidget {
  final color = Colors.black;
  final profile =
      'https://s.isanook.com/ca/0/ui/279/1396205/download20190701165129_1562561119.jpg';
  final bg =
      'https://data.1freewallpapers.com/download/tree-alone-dark-evening-4k.jpg';
  final data = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              '',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text(data.currentUser!.email.toString(),
                style: TextStyle(color: Colors.white)),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(profile,
                    width: 90, height: 90, fit: BoxFit.cover),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(bg), fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: color,
            ),
            title: Text('สถานที่ท่องเที่ยวต่างๆ'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (BuildContext context) {
                      return SeeAll();
                    }),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.hotel,
              color: color,
            ),
            title: Text('โรงแรม'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (BuildContext context) {
                      return SeeAll2();
                    }),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: color,
            ),
            title: Text('Log Out'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return LoginScreen();
              }));
            },
          )
        ],
      ),
    );
  }
}
