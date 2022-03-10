// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:work3/models/food_model.dart';
import 'package:work3/screen/info_food.dart';

class FoodScreen extends StatefulWidget {
  final Food food;
  FoodScreen({required this.food});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new),
                      iconSize: 28,
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      iconSize: 28,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Text(
                          widget.food.name,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.shield,
                                  color: Colors.green,
                                ),
                                Text(
                                  'Official Restaurant',
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return InfoFood();
                                }));
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'ดูข้อมูลร้านค้า',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.green,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "เปิด จนถึง  ",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text(widget.food.time,
                                        style: TextStyle(fontSize: 16)),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.ios_share),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: IconButton(
                                        onPressed: null,
                                        icon: SvgPicture.asset(
                                          'assets/images/heart.svg',
                                          width: 24,
                                          height: 24,
                                        )),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Stack(children: [
                        Container(
                          height: 220,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(widget.food.img),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Container(
                            width: 60,
                            height: 21,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'ค่าส่งฟรี',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red.shade500,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.grey.shade200,
                height: 7,
              ),
              Container(
                height: 350,
                child: Center(
                    child: Text(
                  "coming soon",
                  style: TextStyle(fontSize: 18),
                )),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
