// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_final_fields, unused_field, deprecated_member_use, unused_element, avoid_print, unused_import, avoid_unnecessary_containers, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work3/models/destination_model.dart';
import 'package:work3/screen/see_all.dart';
import 'package:work3/widgets/scroll_home.dart';
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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: DrawerNavagation2(),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: SvgPicture.asset(
                  'assets/images/menu.svg',
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ));
          },
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(5),
          child: SizedBox(),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 34, top: 20),
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
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Text(
                    "สถานที่ท่องเที่ยวต่างๆ",
                    style: GoogleFonts.sriracha(
                        textStyle: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ScrollHome()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
