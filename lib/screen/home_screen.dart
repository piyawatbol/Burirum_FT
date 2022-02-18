// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_final_fields, unused_field, deprecated_member_use, unused_element, avoid_print, unused_import, avoid_unnecessary_containers, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work3/models/destination_model.dart';
import 'package:work3/screen/menu_widget.dart';

import 'package:work3/widgets/destination_carousel.dart';
import 'package:work3/widgets/drawer_navigation2.dart';
import 'package:work3/widgets/hotel_carousel.dart';
import 'package:work3/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavagation2(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: SvgPicture.asset(
                  'assets/images/menu.svg',
                  width: 60,
                  height: 60,
                ));
          },
        ),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 26, top: 10),
                  child: Text(
                    "WELLCOME TO BURIRUM",
                    style: GoogleFonts.anton(
                        textStyle: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                SearchBar(),
                SizedBox(
                  height: 10,
                ),
                DestinationCarousel(),
                HotelCarousel(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
