// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:work3/models/hotel_model.dart';

class HotelScreen extends StatefulWidget {
  final Hotel hotel;
  HotelScreen({required this.hotel});
  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  late final Hotel hotel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Container(
          height: 250,
          width: double.infinity,
          child: Image(
              image: AssetImage(widget.hotel.imageUrl), fit: BoxFit.cover),
        ),
      ]),
    );
  }
}
