// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work3/widgets/drawer_navigation2.dart';
import 'package:work3/widgets/hotel_carousel.dart';
import 'package:work3/widgets/search_bar2.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavagation2(),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade500,
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
                  padding: const EdgeInsets.only(left: 155, top: 10),
                  child: Text(
                    "Hotel",
                    style: GoogleFonts.anton(
                        textStyle: TextStyle(
                      fontSize: 50,
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
                SearchBar2(),
                SizedBox(
                  height: 10,
                ),
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
