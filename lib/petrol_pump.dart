import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:cng/booking_screen.dart';
import 'package:cng/car_registration_screen.dart';
import 'package:cng/detailed_screen.dart';
import 'package:cng/home_screen.dart';
import 'package:cng/review_screen.dart';
import 'package:cng/splash1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cng/page4.dart' as page4;
import 'package:cng/page1.dart' as page1;
import 'package:cng/page2.dart' as page2;
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:cng/page3.dart' as page3;

class petrol_pump extends StatefulWidget {
  @override
  State<petrol_pump> createState() => _SplashState();
}

class _SplashState extends State<petrol_pump> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 0);
  late LatLng _initialPosition;
  final Set<Marker> _markers = {};
  /// Controller to handle bottom nav bar and also handles initial page
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 1);

  int maxCount = 5;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomBarPages = [
      const page1.Page1(),
     page2.Page2(
        initialPosition: _initialPosition,
        markers: _markers,
      ),
      const page3.Page3(),
      page4.Page4(
        name1: name,
        email1: email,
        phone1: number,
      ),
    ];

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: Colors.black,
              showLabel: true,
              textOverflow: TextOverflow.visible,
              maxLine: 1,
              shadowElevation: 5,
              kBottomRadius: 28.0,
              notchColor: Colors.black87,
              removeMargins: false,
              bottomBarWidth: 500,
              showShadow: false,
              durationInMilliSeconds: 300,
              itemLabelStyle: const TextStyle(fontSize: 10),
              elevation: 1,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_outlined,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 1',
                ),
                BottomBarItem(
                  inActiveItem:
                      Icon(Icons.send_outlined, color: Colors.blueGrey),
                  activeItem: Icon(
                    Icons.send_outlined,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 2',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.map_outlined,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.map_outlined,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 3',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person_outline_rounded,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.person_outline_rounded,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 4',
                ),
              ],
              onTap: (index) {
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
            )
          : null,
      body: Container(
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                  bottomBarPages.length, (index) => bottomBarPages[index]),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          right: 77,
                          top: 42,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF3A3A3A),
                              borderRadius: BorderRadius.circular(28),
                            ),
                            child: Container(
                              width: 227,
                              height: 56,
                            ),
                          ),
                        ),
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
                          padding: const EdgeInsets.only(top: 55, left: 10),
                          child: Container(
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Stack(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 9, 63, 8),
                                          child: SizedBox(
                                            width: 72,
                                            height: 56,
                                            child: SvgPicture.asset(
                                              'assets/union_8_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 34.0),
                                          child: Text(
                                            'Station Details',
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
                              Container(
                                margin: EdgeInsets.fromLTRB(6, 0, 6, 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/bigpump.png',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 0),
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0, 209, 00, 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(3, 0, 0, 1.5),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE47B37),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Container(
                                          width: 7,
                                          height: 7,
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(3, 0, 0, 1.5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0x7DFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(3.5),
                                          ),
                                          child: Container(
                                            width: 7,
                                            height: 7,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(3, 0, 0, 1.5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0x7DFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(3.5),
                                          ),
                                          child: Container(
                                            width: 7,
                                            height: 7,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(3, 0, 0, 1.5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0x7DFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(3.5),
                                          ),
                                          child: Container(
                                            width: 7,
                                            height: 7,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // color: Color(0xffF7F8FA),
                                decoration: BoxDecoration(
                                    color: Color(0xfff7f8fa),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                                margin: EdgeInsets.fromLTRB(7, 0, 5, 69),
                                child: Stack(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(9, 47.5, 6.7, 0),
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          SizedBox(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      21, 0, 28, 11.6),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // margin:
                                                        //     EdgeInsets.fromLTRB(
                                                        //         0, 5.5, 1, 0),
                                                        child: SizedBox(
                                                          width: 210,
                                                          child: Text(
                                                            'Green Mountain Falls, CO 80819',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 12,
                                                              height: 3.6,
                                                              color: Color(
                                                                  0xFF8D8D8D),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // margin:
                                                        //     EdgeInsets.fromLTRB(
                                                        //         0, 0, 0, 5.5),
                                                        child: Text(
                                                          '21 reviews',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 9.1,
                                                            height: 4,
                                                            letterSpacing: 0.5,
                                                            color: Color(
                                                                0xFF8D8D8D),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      15.4, 0, 15.4, 4.5),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x80FEE9DB),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.2),
                                                          ),
                                                          child: Container(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    11.5,
                                                                    0,
                                                                    13.9,
                                                                    0.4),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          11.9,
                                                                          7,
                                                                          12.1),
                                                                  child:
                                                                      SizedBox(
                                                                    width: 16.4,
                                                                    height:
                                                                        11.9,
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/vector_275_x2.svg',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Wi-Fi',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        12,
                                                                    height: 3,
                                                                    color: Color(
                                                                        0xFFF69454),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x80FEE9DB),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.2),
                                                          ),
                                                          child: Container(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    12.3,
                                                                    0,
                                                                    19.2,
                                                                    0.4),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          12.8,
                                                                          7.8,
                                                                          10.9),
                                                                  child:
                                                                      SizedBox(
                                                                    width: 14.8,
                                                                    height:
                                                                        12.3,
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/vector_44_x2.svg',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Pay by card',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        12,
                                                                    height: 3,
                                                                    color: Color(
                                                                        0xFFF69454),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x80FEE9DB),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.2),
                                                          ),
                                                          child: Container(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    13.6,
                                                                    0,
                                                                    16.6,
                                                                    0.4),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          11.4,
                                                                          7.6,
                                                                          11),
                                                                  child:
                                                                      SizedBox(
                                                                    width: 13.6,
                                                                    height:
                                                                        13.6,
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/vector_1446_x2.svg',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Cafe',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        12,
                                                                    height: 3,
                                                                    color: Color(
                                                                        0xFFF69454),
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
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      15.4, 0, 15.4, 12.1),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 0, 4.5, 0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x80FEE9DB),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          18.2),
                                                            ),
                                                            child: Container(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          12.8,
                                                                          0,
                                                                          14.6,
                                                                          0.4),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    margin: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            10.8,
                                                                            9.7,
                                                                            10.4),
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          12.3,
                                                                      height:
                                                                          14.8,
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        'assets/vector_167_x2.svg',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Shop',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          12,
                                                                      height: 3,
                                                                      color: Color(
                                                                          0xFFF69454),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x80FEE9DB),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.2),
                                                          ),
                                                          child: Container(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    11.1,
                                                                    0,
                                                                    18.5,
                                                                    0.4),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          9.3,
                                                                          8.1,
                                                                          9),
                                                                  child:
                                                                      SizedBox(
                                                                    width: 14.1,
                                                                    height:
                                                                        17.7,
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/vector_608_x2.svg',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Hand wash',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        12,
                                                                    height: 3,
                                                                    color: Color(
                                                                        0xFFF69454),
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
                                                // Container(
                                                //   margin: EdgeInsets.fromLTRB(
                                                //       17.6, 0, 20.5, 1.5),
                                                //   child: Container(
                                                //     decoration: BoxDecoration(
                                                //       color: Color(0xFFFEF4ED),
                                                //     ),
                                                //     child: Container(
                                                //       width: 324.2,
                                                //       height: 0,
                                                //     ),
                                                //   ),
                                                // ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      15.4, 0, 27.6, 3.4),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // margin:
                                                        //     EdgeInsets.fromLTRB(
                                                        //         0, 1.5, 18, 0),
                                                        child: SizedBox(
                                                          width: 37,
                                                          child: Text(
                                                            'Fuel',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 17,
                                                              height: 2,
                                                              color: Color(
                                                                  0xFF000000),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 0, 1.5),
                                                        child: Text(
                                                          'April 1, 2024   2 pm',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 10,
                                                            height: 3.6,
                                                            letterSpacing: 0.3,
                                                            color: Color(
                                                                0xFF858585),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      18.2, 0, 1.2, 2.8),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width: 90,
                                                                height: 31,
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        1.1,
                                                                        9.2,
                                                                        0),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15),
                                                                  border: Border.all(
                                                                      color: Color(
                                                                          0xFF8A8A8A)),
                                                                ),
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .all(
                                                                          3.0),
                                                                      child: Image(
                                                                          image:
                                                                              AssetImage('assets/deisel.png')),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              3),
                                                                      child:
                                                                          Text(
                                                                        'Diesel',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          fontSize:
                                                                              12.1,
                                                                          height:
                                                                              3,
                                                                          letterSpacing:
                                                                              -0.1,
                                                                          color:
                                                                              Color(0xFF4E4E4E),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        0,
                                                                        10,
                                                                        1.1),
                                                                child: Text(
                                                                  '₹ 383/L',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        12,
                                                                    height: 3,
                                                                    letterSpacing:
                                                                        0.1,
                                                                    color: Color(
                                                                        0xFF828282),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 90,
                                                            height: 31,
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0, 0, 0, 0),
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15),
                                                              border: Border.all(
                                                                  color: Color(
                                                                      0xFF8A8A8A)),
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                          3.0),
                                                                  child: Image(
                                                                      image: AssetImage(
                                                                          'assets/cng.png')),
                                                                ),
                                                                Text(
                                                                  'CNG',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        12.1,
                                                                    height: 3,
                                                                    letterSpacing:
                                                                        -0.1,
                                                                    color: Color(
                                                                        0xFF4E4E4E),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets
                                                                .fromLTRB(0,
                                                                    0.1, 30, 1),
                                                            child: Text(
                                                              '₹ 212/L',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 12,
                                                                height: 3,
                                                                color: Color(
                                                                    0xFF828282),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      17.5, 0, 7.5, 16.5),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width: 90,
                                                                height: 31,
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        1.2,
                                                                        8.9,
                                                                        0),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15),
                                                                  border: Border.all(
                                                                      color: Color(
                                                                          0xFF8A8A8A)),
                                                                ),
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .all(
                                                                          3.0),
                                                                      child: Image(
                                                                          image:
                                                                              AssetImage('assets/petrol.png')),
                                                                    ),
                                                                    Text(
                                                                      'Petrol',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        fontSize:
                                                                            12.1,
                                                                        height:
                                                                            3,
                                                                        letterSpacing:
                                                                            -0.1,
                                                                        color: Color(
                                                                            0xFF4E4E4E),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        1.2),
                                                                child: Text(
                                                                  '₹ 209/L',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        12,
                                                                    height: 3,
                                                                    letterSpacing:
                                                                        -0.1,
                                                                    color: Color(
                                                                        0xFF828282),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets
                                                                .fromLTRB(0,
                                                                    1.2, 20, 0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  width: 90,
                                                                  height: 31,
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          20,
                                                                          0),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15),
                                                                    border: Border.all(
                                                                        color: Color(
                                                                            0xFF8A8A8A)),
                                                                  ),
                                                                  child: Row(
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            3.0),
                                                                        child: Image(
                                                                            image:
                                                                                AssetImage('assets/electric.png')),
                                                                      ),
                                                                      Text(
                                                                        'Electric',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          fontSize:
                                                                              12.1,
                                                                          height:
                                                                              3,
                                                                          letterSpacing:
                                                                              -0.1,
                                                                          color:
                                                                              Color(0xFF4E4E4E),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '₹ 159/L',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        12,
                                                                    height: 3,
                                                                    letterSpacing:
                                                                        -0.1,
                                                                    color: Color(
                                                                        0xFF828282),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 90,
                                                  margin: EdgeInsets.fromLTRB(
                                                      0.2, 0, 0, 13.7),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        booking_screen(
                                                                  vehicle_num:
                                                                      vehicle,
                                                                ), // Replace with your new screen widget
                                                              ),
                                                            );
                                                          },
                                                          child: Container(
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0,
                                                                    1.5,
                                                                    7.6,
                                                                    0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFF69454),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          35),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          35),
                                                                ),
                                                              ),
                                                              child: Container(
                                                                padding: EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        22.7,
                                                                        0,
                                                                        10.1),
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets
                                                                          .fromLTRB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              12.1),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(
                                                                                20,
                                                                                0,
                                                                                7.6,
                                                                                0),
                                                                            child:
                                                                                Container(
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0x30000000),
                                                                                borderRadius: BorderRadius.circular(21.2),
                                                                              ),
                                                                              child: Container(
                                                                                width: 42.4,
                                                                                height: 42.4,
                                                                                padding: EdgeInsets.fromLTRB(11, 11, 11, 11),
                                                                                child: SizedBox(
                                                                                  width: 20.5,
                                                                                  height: 20.5,
                                                                                  child: SvgPicture.asset(
                                                                                    'assets/vector_285_x2.svg',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(
                                                                                4,
                                                                                3,
                                                                                0,
                                                                                3.4),
                                                                            child:
                                                                                Text(
                                                                              'Booking',
                                                                              style: GoogleFonts.getFont(
                                                                                'DM Sans',
                                                                                fontWeight: FontWeight.w700,
                                                                                fontSize: 18,
                                                                                height: 2,
                                                                                letterSpacing: -0.5,
                                                                                color: Color(0xFFFFFFFF),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 0, 0, 1.5),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFFFFFFF),
                                                              borderRadius: BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          40),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          40)),
                                                            ),
                                                            child: Container(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          11.5,
                                                                          22.7,
                                                                          0,
                                                                          1.2),
                                                              child: Stack(
                                                                clipBehavior:
                                                                    Clip.none,
                                                                children: [
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                        margin: EdgeInsets.fromLTRB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            7.9),
                                                                        child:
                                                                            Align(
                                                                          alignment:
                                                                              Alignment.topLeft,
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                margin: EdgeInsets.fromLTRB(0, 0, 9.1, 4.2),
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFFFEF4ED),
                                                                                    borderRadius: BorderRadius.circular(22.7),
                                                                                  ),
                                                                                  child: Container(
                                                                                    width: 45.5,
                                                                                    height: 45.5,
                                                                                    padding: EdgeInsets.fromLTRB(12.6, 12.6, 12.6, 12.6),
                                                                                    child: Container(
                                                                                      width: 24.2,
                                                                                      height: 24.2,
                                                                                      child: SizedBox(
                                                                                        width: 20.2,
                                                                                        height: 20.2,
                                                                                        child: SvgPicture.asset(
                                                                                          'assets/vector_1386_x2.svg',
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                margin: EdgeInsets.fromLTRB(0, 13.6, 0, 0),
                                                                                child: Text(
                                                                                  '24 min',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Poppins',
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontSize: 10,
                                                                                    height: 3.6,
                                                                                    letterSpacing: 0.2,
                                                                                    color: Color(0xFF858585),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Positioned(
                                                                    left: 55,
                                                                    // right: 53.2,
                                                                    top: -4.5,
                                                                    child:
                                                                        SizedBox(
                                                                      height:
                                                                          37,
                                                                      child:
                                                                          Text(
                                                                        '~ 8 km',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'DM Sans',
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              18,
                                                                          height:
                                                                              2,
                                                                          letterSpacing:
                                                                              -0.2,
                                                                          color:
                                                                              Color(0xFF4A4A4A),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            right: 26.9,
                                            top: -18.2,
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
                                              child: SizedBox(
                                                height: 37,
                                                child: Text(
                                                  '4.9',
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18.2,
                                                    height: 2,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 21.4,
                                            top: -18.2,
                                            child: SizedBox(
                                              height: 37,
                                              child: Text(
                                                'Starlight Petroleum',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18,
                                                  height: 2,
                                                  letterSpacing: -0.2,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
