// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, unused_local_variable, sized_box_for_whitespace
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work3/models/hotel_model.dart';
import 'package:work3/screen/hotel_screen.dart';

class SeeAll2 extends StatefulWidget {
  SeeAll2({Key? key}) : super(key: key);

  @override
  State<SeeAll2> createState() => _SeeAll2State();
}

class _SeeAll2State extends State<SeeAll2> {
  final formKey = GlobalKey<FormState>();
  final controller = TextEditingController();
  final hotelsearch = hotels;
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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                      color: Colors.grey.shade500,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 28,
                      )),
                  Container(
                    width: 320,
                    child: CupertinoSearchTextField(
                      autofocus: true,
                      controller: controller,
                      onChanged: _search,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: hotels.length,
                itemBuilder: (BuildContext context, int index) {
                  Hotel hotel = hotels[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => HotelScreen(hotel: hotel)));
                    },
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 15,
                                  offset: Offset(0, 1),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ClipRRect(
                                        child: Image(
                                            height: 180,
                                            width: 180,
                                            image: AssetImage(hotel.imageUrl))),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Container(
                                        height: 140,
                                        width: 160,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              child: Text(
                                                hotel.name,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 1.2),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5),
                                              child: _buildRatingStars(
                                                  hotel.rating),
                                            ),
                                            Text(
                                              '\$ ${hotel.price.toString()} / คืน',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _search(String query) {
    final suggestions = hotelsearch.where((element) {
      final city = element.name.toLowerCase();
      final input = query.toLowerCase();
      return city.contains(input);
    }).toList();

    setState(() {
      hotels = suggestions;
    });
  }
}
