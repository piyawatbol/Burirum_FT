// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:work3/models/destination_model.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final controller = TextEditingController();
  final destinationsearch = destinations;
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
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextField(
                    onChanged: _search,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Search'),
                  ),
                ),
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
    );
  }

  void _search(String query) {
    final suggestions = destinationsearch.where((element) {
      final city = element.city.toLowerCase();
      final input = query.toLowerCase();
      return city.contains(input);
    }).toList();

    setState(() {
      destinations = suggestions;
    });
  }
}
