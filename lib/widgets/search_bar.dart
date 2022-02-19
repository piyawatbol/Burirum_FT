// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import 'package:work3/screen/see_all.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade200,
              border: Border.all(
                color: Colors.white24,
              )),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return SeeAll();
                }),
              );
            },
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 39,
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Text(
                            'Search',
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 30,
                    child: Image.asset(
                      "assets/images/search.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
