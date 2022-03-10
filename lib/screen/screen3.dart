// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, avoid_print

import 'package:flutter/material.dart';
import 'package:work3/models/food_model.dart';
import 'package:work3/screen/food_screen.dart';
import 'package:work3/widgets/recipe_card.dart';

// import 'package:work1/widgets/cardcustom.dart';

class Screen3 extends StatefulWidget {
  Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
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
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(5),
            child: SizedBox(),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
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
