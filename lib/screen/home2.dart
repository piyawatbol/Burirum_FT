// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, avoid_print

import 'package:flutter/material.dart';
import 'package:work3/models/food_model.dart';
import 'package:work3/screen/food_screen.dart';
import 'package:work3/widgets/recipe_card.dart';

// import 'package:work1/widgets/cardcustom.dart';

class Home2 extends StatefulWidget {
  Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 5,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.restaurant_menu,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Food Recipe",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: foods.length,
          itemBuilder: (BuildContext context, int index) {
            Food food = foods[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => FoodScreen(food: food)));
              },
              child: RecipeCard(
                  title: food.name,
                  cookTime: food.time,
                  rating: food.rating,
                  thumbnailUrl: food.img),
            );
          },
        ));
  }
}
