// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InfoFood extends StatelessWidget {
  const InfoFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new),
              iconSize: 28,
              color: Colors.black,
            ),
            SizedBox(
              width: 70,
            ),
            Text(
              "รายละเอียดร้านอาหาร",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      )),
    );
  }
}
