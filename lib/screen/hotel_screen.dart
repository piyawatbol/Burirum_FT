// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

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
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐';
    }
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 30,
          color: Colors.black,
        ),
      ),
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              child: Image(
                  image: AssetImage(widget.hotel.imageUrl), fit: BoxFit.cover),
            ),
          ],
        ),
        Positioned(
          top: 222,
          child: Container(
            padding: EdgeInsets.all(20),
            height: 440,
            width: 395,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                              ),
                              child: Text(
                                widget.hotel.name,
                                style: TextStyle(fontSize: 26),
                              ),
                            ),
                            _buildRatingStars(widget.hotel.rating),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Text(
                          '\$ ${widget.hotel.price.toString()}',
                          style: TextStyle(fontSize: 26),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 15),
                    child: Text("รายการห้อง", style: TextStyle(fontSize: 22)),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          Bed bed = beds[index];
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Container(
                                  width: 400,
                                  height: 90,
                                  color: Colors.grey.shade200,
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(bed.bed1),
                                          Text(
                                            'ห้องเตียงเดี่ยวนอนคนเดียว',
                                            style: TextStyle(fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Container(
                                  width: 400,
                                  height: 90,
                                  color: Colors.grey.shade200,
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(bed.bed2),
                                          Text(
                                            'ห้องเตียงเดี่ยวนอน 2 คน',
                                            style: TextStyle(fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Container(
                                  width: 400,
                                  height: 90,
                                  color: Colors.grey.shade200,
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(bed.bed3),
                                          Text(
                                            'ห้องเตียงคู่นอน 2 คน',
                                            style: TextStyle(fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
