// ignore_for_file: prefer_const_constructors, file_names, avoid_unnecessary_containers, sized_box_for_whitespace, unused_local_variable

import 'package:flutter/material.dart';
import 'package:work3/models/destination_model.dart';
import 'package:work3/widgets/destination_screen.dart';

class ScrollHome extends StatelessWidget {
  const ScrollHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          height: 300,
          child: ListView.builder(
            reverse: true,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              Destination destination = destinations[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              DestinationScreen(destination: destination)));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(1, 4),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                              width: 100,
                              child: Image.asset(destination.imageUrl))),
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Text(
                          destination.city,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      )
                    ]),
                  ),
                ),
              );
            },
          )),
    );
  }
}
