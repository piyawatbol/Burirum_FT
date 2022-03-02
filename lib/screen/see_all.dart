// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, unused_local_variable, sized_box_for_whitespace
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work3/models/destination_model.dart';
import 'package:work3/widgets/destination_screen.dart';

class SeeAll extends StatefulWidget {
  SeeAll({Key? key}) : super(key: key);

  @override
  State<SeeAll> createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
  final formKey = GlobalKey<FormState>();
  final controller = TextEditingController();
  final destinationsearch = destinations;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    width: 330,
                    child: CupertinoSearchTextField(
                      controller: controller,
                      onChanged: _search,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
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
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          height: 185,
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
                                      width: 9,
                                    ),
                                    ClipRRect(
                                        child: Image(
                                            height: 210,
                                            width: 200,
                                            image: AssetImage(
                                                destination.imageUrl))),
                                    Container(
                                      height: 200,
                                      width: 160,
                                      child: Padding(
                                        padding: const EdgeInsets.all(18),
                                        child: Column(
                                          children: [
                                            Text(
                                              destination.city,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1.2),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(destination.description,
                                                style: TextStyle(
                                                    color: Colors.grey)),
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
