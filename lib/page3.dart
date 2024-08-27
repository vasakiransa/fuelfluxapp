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

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF3A3A3A),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(28),
                          bottomRight: Radius.circular(28)),
                    ),
                    child: Container(
                      width: 72,
                      height: 56,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF3A3A3A),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Container(
                    width: 227,
                    height: 56,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 55, left: 10),
            child: Container(
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 34.0),
                      child: Text(
                        'Details',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          height: 4,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
                // Positioned(
                //   left: 21,
                //   child: Container(
                //     width: 38.4,
                //     height: 38.4,
                //     child: SizedBox(
                //       width: 12,
                //       height: 24,
                //       child: SvgPicture.asset(
                //         'assets/vector_119_x2.svg',
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130.0),
            child: Container(
              margin: EdgeInsets.fromLTRB(9, 0, 9, 76),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF7F8FA),
                  borderRadius: BorderRadius.circular(29),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(17, 12, 16, 13),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 2, 2),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 7, 0, 5.8),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(20.9),
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Container(
                                    padding:
                                        EdgeInsets.fromLTRB(16.2, 14, 15, 18.2),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 1.8, 0, 0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 44, 5.8, 0),
                                                      child: Text(
                                                        'ID Number',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12,
                                                          height: 5.8,
                                                          letterSpacing: -0.2,
                                                          color:
                                                              Color(0xFF7E7E7E),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(0,
                                                              33.5, 5.8, 75.6),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFF69454),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      3.8),
                                                        ),
                                                        child: Container(
                                                          width: 3.8,
                                                          height: 3.8,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 0, 44),
                                                      child: Text(
                                                        'Active',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 10,
                                                          height: 6.9,
                                                          letterSpacing: -0.2,
                                                          color:
                                                              Color(0xFFF69454),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 8.2, 66.3),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFD9D9D9),
                                                      ),
                                                      child: Container(
                                                        width: 0,
                                                        height: 48.5,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 3, 8.9, 0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            onTap:
                                                            () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          review_screen(), // Replace with your new screen widget
                                                                ),
                                                              );
                                                            };
                                                          },
                                                          child: Container(
                                                            margin: EdgeInsets
                                                                .fromLTRB(12.1,
                                                                    0, 0, 1.8),
                                                            child: Text(
                                                              '4.9',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 18,
                                                                height: 2.3,
                                                                color: Color(
                                                                    0xFF292929),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(0, 0,
                                                                  17.5, 0),
                                                          child: Text(
                                                            'Fuel',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 12,
                                                              height: 5.8,
                                                              letterSpacing:
                                                                  -0.2,
                                                              color: Color(
                                                                  0xFF7E7E7E),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 15.4, 0, 84.2),
                                                    child: SizedBox(
                                                      width: 15.4,
                                                      height: 15.2,
                                                      child: SvgPicture.asset(
                                                        'assets/vector_703_x2.svg',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          left: -1,
                                          top: 1,
                                          child: SizedBox(
                                            width: 46.6,
                                            height: 46,
                                            child: SvgPicture.asset(
                                              'assets/ellipse_1039_x2.svg',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 77.9,
                                top: 0,
                                child: SizedBox(
                                  height: 49.4,
                                  child: Text(
                                    'Starlight Petroleum',
                                    style: GoogleFonts.getFont(
                                      'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      height: 3.8,
                                      letterSpacing: -0.4,
                                      color: Color(0xFF292929),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 123.5,
                                bottom: 24.6,
                                top: 65,
                                child: SizedBox(
                                  height: 13.3,
                                  child: Text(
                                    'Vehicle',
                                    style: GoogleFonts.getFont(
                                      'DM Sans',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      height: 5.8,
                                      letterSpacing: -0.2,
                                      color: Color(0xFF7E7E7E),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16.2,
                                bottom: 0,
                                top: 90,
                                child: SizedBox(
                                  height: 28.5,
                                  child: Text(
                                    '64GW9',
                                    style: GoogleFonts.getFont(
                                      'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 4.3,
                                      letterSpacing: -0.8,
                                      color: Color(0xFF292929),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 123.6,
                                bottom: 0,
                                top: 90,
                                child: SizedBox(
                                  height: 17.1,
                                  child: Text(
                                    'Pulsar ',
                                    style: GoogleFonts.getFont(
                                      'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 4.3,
                                      letterSpacing: -0.8,
                                      color: Color(0xFF292929),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 39.2,
                                bottom: 0,
                                top: 90,
                                child: SizedBox(
                                  height: 28.5,
                                  child: Text(
                                    'Petrol',
                                    style: GoogleFonts.getFont(
                                      'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 4.3,
                                      letterSpacing: -0.8,
                                      color: Color(0xFF292929),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 8.2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF69454),
                                          borderRadius:
                                              BorderRadius.circular(20.9),
                                        ),
                                        child: Container(
                                          width: 163,
                                          height: 81,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 90,
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(17, 0, 17, 0),
                                        child: Stack(
                                          // clipBehavior: Clip.none,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 25.1, 9, 20),
                                                  width: 36,
                                                  height: 35,
                                                  child: SizedBox(
                                                    width: 24,
                                                    height: 23.3,
                                                    child: SvgPicture.asset(
                                                      'assets/vector_268_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Booking Time',
                                                  style: GoogleFonts.getFont(
                                                    'DM Sans',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    height: 5.8,
                                                    letterSpacing: -0.2,
                                                    color: Color(0xCFFFFFFF),
                                                  ),
                                                ),

                                                // SizedBox(
                                                //   height: 29,
                                                //   child: RichText(
                                                //     text: TextSpan(
                                                //       children: [
                                                //         TextSpan(
                                                //           text: '13:45 ',
                                                //           style: GoogleFonts
                                                //               .getFont(
                                                //             'DM Sans',
                                                //             fontWeight:
                                                //                 FontWeight.w700,
                                                //             fontSize: 18,
                                                //             height: 1.3,
                                                //             letterSpacing: 0.2,
                                                //           ),
                                                //         ),
                                                //         TextSpan(
                                                //           text: '12 March ',
                                                //           style: GoogleFonts
                                                //               .getFont(
                                                //             'DM Sans',
                                                //             fontWeight:
                                                //                 FontWeight.w700,
                                                //             fontSize: 10,
                                                //             height: 1.3,
                                                //             letterSpacing: 0.2,
                                                //           ),
                                                //         ),
                                                //       ],
                                                //     ),
                                                //   ),
                                                // ),
                                              ],
                                            ),
                                            Positioned(
                                              top: 43,
                                              left: 44,
                                              child: Text(
                                                '13:45',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 18,
                                                  height: 1.1,
                                                  letterSpacing: 0.2,
                                                  color: Color(0xFFFFFFFF),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 35,
                                              left: 44,
                                              child: Text(
                                                '12 March',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  height: 5.8,
                                                  letterSpacing: -0.2,
                                                  color: Color(0xCFFFFFFF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 7.2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF69454),
                                        borderRadius:
                                            BorderRadius.circular(20.9),
                                      ),
                                      child: Container(
                                        width: 163,
                                        height: 82,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 90,
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 0, 12, 0),
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 34.2, 6, 5.8),
                                                child: SizedBox(
                                                  width: 29,
                                                  height: 29,
                                                  child: SvgPicture.asset(
                                                    'assets/frame_21_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Distance',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  height: 5.8,
                                                  letterSpacing: -0.1,
                                                  color: Color(0xCFFFFFFF),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            left: 30,
                                            bottom: 7,
                                            child: SizedBox(
                                              height: 29,
                                              child: Text(
                                                '07km 20m',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 18,
                                                  height: 1.1,
                                                  letterSpacing: 0.2,
                                                  color: Color(0xFFFFFFFF),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Positioned(
                            top: 6.9,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(22.8),
                              ),
                              child: Container(
                                width: 339,
                                height: 315,
                              ),
                            ),
                          ),
                          Positioned(
                            left: -7,
                            top: 91.9,
                            child: SizedBox(
                              width: 317,
                              height: 218,
                              child: SvgPicture.asset(
                                'assets/group_4818151_x2.svg',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 315,
                            width: double.infinity,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(17, 0, 17, 0),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    right: 3,
                                    top: 26.9,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF69454),
                                        borderRadius:
                                            BorderRadius.circular(7.6),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 133,
                                            height: 38,
                                            // padding: EdgeInsets.fromLTRB(
                                            //     13.8, 13, 13.8, 8.2),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // width: 22.7,
                                                    // height: 22.8,
                                                    child: SizedBox(
                                                      width: 17,
                                                      height: 16.9,
                                                      child: Icon(
                                                        Icons.map_outlined,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 285.2,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 0, 102.1),
                                          child: SizedBox(
                                            width: 285.2,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 34.5, 12.7),
                                                  child: SizedBox(
                                                    width: 102.1,
                                                    child: Text(
                                                      'Total value',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'DM Sans',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 17.1,
                                                        height: 4,
                                                        letterSpacing: -0.3,
                                                        color:
                                                            Color(0xFF3A3A3A),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 12.7, 0, 0),
                                                  child: Text(
                                                    'Map route',
                                                    style: GoogleFonts.getFont(
                                                      'DM Sans',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15.2,
                                                      height: 4.5,
                                                      letterSpacing: -0.2,
                                                      color: Color(0xFFFFFFFF),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        // Container(
                                        //   margin: EdgeInsets.fromLTRB(
                                        //       0, 0, 38.9, 0),
                                        //   child: SizedBox(
                                        //     width: 177.8,
                                        //     height: 50.4,
                                        //     child: SvgPicture.asset(
                                        //       'assets/vector_2526_x2.svg',
                                        //     ),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 2,
                                    top: 43.7,
                                    child: SizedBox(
                                      height: 28.5,
                                      child: Text(
                                        '₹ 383',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 22.8,
                                          // height: 10,
                                          letterSpacing: 0.2,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
