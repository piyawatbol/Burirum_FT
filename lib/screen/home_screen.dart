// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_final_fields, unused_field, deprecated_member_use, unused_element, avoid_print
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import 'package:work3/widgets/destination_carousel.dart';
import 'package:work3/widgets/hotel_carousel.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                "WELLCOME TO BURIRUM",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            DestinationCarousel(),
            SizedBox(
              height: 10,
            ),
            HotelCarousel(),
          ],
        ),
      ),
    );
  }
}
