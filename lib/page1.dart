import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:cng/main_screen.dart';
import 'package:cng/order_tracking.dart';
import 'package:cng/petrol_pump.dart';
import 'package:cng/review_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page4.dart';
import 'package:cng/page4.dart' as page4;
import 'package:cng/page2.dart' as page2;
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  final NotchBottomBarController? controller;

  const Page1({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Stack(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 11.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/start.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 200),
              child: Container(
                height: 47,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Color(0xffeff0f7),
                    hintText: 'Find the best Gas Station',
                    prefixIcon: Icon(Icons.search), // You can
                    hintStyle: TextStyle(
                      color: Color(0xFf2d2d2d),
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      height: 1.2,
                      letterSpacing: -0.8,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35.0),
                      borderSide: BorderSide(
                          color: Colors.orange), // Default border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                          color: Colors.orange,
                          width: 2.0), // Orange border when focused
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280, left: 17, right: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(2, 0, 2, 16),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Visited Gas Station',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          height: 1,
                          letterSpacing: -0.2,
                          color: Color(0xFF2D2D2D),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 320, left: 17, right: 17),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          review_screen(), // Replace with your new screen widget
                    ),
                  );
                },
                child: Container(
                    width: 351,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x33000000),
                            offset: Offset(3, 2),
                            blurRadius: 4,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    height: 106,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            child: Container(
                              child: Container(
                                height: 88,
                                width: 88,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/firefly_create_a_3_dblender_illustration_with_appropriate_colors_to_show_the_map_to_find_nearby_petr_1_removebg_preview_1.png'),
                                  )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'Plaza Filling Station',
                                      style: GoogleFonts.getFont(
                                        'DM Sans',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        height: 1,
                                        letterSpacing: -0.7,
                                        color: Color(0xFF2D2D2D),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(Icons.location_on_outlined),
                                    ),
                                    Text(
                                      '1901 Thomridge Clr.SHilah, Hawai,\n 81063',
                                      style: GoogleFonts.getFont(
                                        'DM Sans',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        height: 1.3,
                                        letterSpacing: -0.1,
                                        color: Color(0xFF818181),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8, left: 5),
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: 49,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xffFEE9DB)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Petrol - ₹ 109/L',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 4.8,
                                                // height: 4.4,
                                                color: Color(0xFFF69454),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 49,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xffFEE9DB)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Petrol - ₹ 109/L',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 4.8,
                                                // height: 4.4,
                                                color: Color(0xFFF69454),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 49,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xffFEE9DB)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Petrol - ₹ 109/L',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 4.8,
                                                // height: 4.4,
                                                color: Color(0xFFF69454),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 49,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xffFEE9DB)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Petrol - ₹ 109/L',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 4.8,
                                                // height: 4.4,
                                                color: Color(0xFFF69454),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 17, right: 17),
              child: Container(
                  width: 351,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x33000000),
                          offset: Offset(3, 2),
                          blurRadius: 4,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 106,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          child: Container(
                            child: Container(
                              height: 88,
                              width: 88,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/firefly_create_a_3_dblender_illustration_with_appropriate_colors_to_show_the_map_to_find_nearby_petr_1_removebg_preview_1.png'),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Plaza Filling Station',
                                    style: GoogleFonts.getFont(
                                      'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      height: 1,
                                      letterSpacing: -0.7,
                                      color: Color(0xFF2D2D2D),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.location_on_outlined),
                                  ),
                                  Text(
                                    '1901 Thomridge Clr.SHilah, Hawai,\n 81063',
                                    style: GoogleFonts.getFont(
                                      'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      height: 1.3,
                                      letterSpacing: -0.1,
                                      color: Color(0xFF818181),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, left: 5),
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 49,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xffFEE9DB)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Petrol - ₹ 109/L',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 4.8,
                                              // height: 4.4,
                                              color: Color(0xFFF69454),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 49,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xffFEE9DB)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Petrol - ₹ 109/L',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 4.8,
                                              // height: 4.4,
                                              color: Color(0xFFF69454),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 49,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xffFEE9DB)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Petrol - ₹ 109/L',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 4.8,
                                              // height: 4.4,
                                              color: Color(0xFFF69454),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 49,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xffFEE9DB)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Petrol - ₹ 109/L',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 4.8,
                                              // height: 4.4,
                                              color: Color(0xFFF69454),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 575, left: 17),
              child: Text(
                'Around You',
                style: GoogleFonts.getFont(
                  'DM Sans',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  height: 1,
                  letterSpacing: -0.2,
                  color: Color(0xFF2D2D2D),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 620, left: 17),
              child: Image(
                image: AssetImage('assets/mappppp.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
