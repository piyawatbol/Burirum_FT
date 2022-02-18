// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, deprecated_member_use
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:work3/screen/home_screen.dart';
import 'package:work3/screen/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;
  final tabs = [HomeScreen(), Screen2(), Screen2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentTab = index;
          });
        },
        currentIndex: _currentTab,
        items: [
          BottomNavigationBarItem(
              label: 'home',
              icon: Icon(
                Icons.home,
                size: 30,
              )),
          BottomNavigationBarItem(
              label: 'profile',
              icon: Icon(
                Icons.account_circle,
                size: 30,
              )),
        ],
      ),
      body: tabs[_currentTab],
    );
  }
}
