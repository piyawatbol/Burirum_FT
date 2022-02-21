// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import 'package:work3/screen/see_all.dart';
import 'package:work3/screen/see_all2.dart';

class DrawerNavagation2 extends StatelessWidget {
  const DrawerNavagation2({Key? key}) : super(key: key);
  final color = Colors.black;
  final profile =
      'https://s.isanook.com/ca/0/ui/279/1396205/download20190701165129_1562561119.jpg';
  final bg =
      'https://data.1freewallpapers.com/download/tree-alone-dark-evening-4k.jpg';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Piyawat Sakdadet',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text("Piyawatbol@gmail.com",
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
            title: Text('Home'),
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
            title: Text('Hotel'),
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
              Icons.share,
              color: color,
            ),
            title: Text('Share'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.notifications,
              color: color,
            ),
            title: Text('Notifications'),
            onTap: () {},
            trailing: ClipOval(
              child: Container(
                color: Colors.red.shade800,
                width: 20,
                height: 20,
                child: Center(
                  child: Text('9+',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: color,
            ),
            title: Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.description,
              color: color,
            ),
            title: Text('Policies'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: color,
            ),
            title: Text('Log Out'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
