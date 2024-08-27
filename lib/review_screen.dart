import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:cng/car_registration_screen.dart';
import 'package:cng/detailed_screen.dart';
import 'package:cng/main_screen.dart';
import 'package:cng/order_tracking.dart';
import 'package:cng/petrol_pump.dart';
import 'package:cng/splash1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page4.dart';
import 'package:cng/page4.dart' as page4;
import 'package:cng/page1.dart' as page1;
import 'package:cng/page2.dart' as page2;
import 'package:cng/page22.dart' as page22;

import 'package:cng/page3.dart' as page3;
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class review_screen extends StatefulWidget {
  @override
  State<review_screen> createState() => _home_screenState();
}

class _home_screenState extends State<review_screen> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// widget list
    final List<Widget> bottomBarPages = [
      const review(),
      const page22.page22(),
      const page3.Page3(),
      page4.Page4(
        name1: name,
        email1: email,
        phone1: number,
      ),
    ];

    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
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
    );
  }
}

class review extends StatelessWidget {
  const review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
                          'Reviews',
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
                                      padding: EdgeInsets.fromLTRB(
                                          16.2, 14, 15, 18.2),
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          SizedBox(
                                            width: double.infinity,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 44, 5.8, 0),
                                                        child: Text(
                                                          'ID Number',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 12,
                                                            height: 5.8,
                                                            letterSpacing: -0.2,
                                                            color: Color(
                                                                0xFF7E7E7E),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0,
                                                                33.5,
                                                                5.8,
                                                                75.6),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFF69454),
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
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 10,
                                                            height: 6.9,
                                                            letterSpacing: -0.2,
                                                            color: Color(
                                                                0xFFF69454),
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
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 8.2, 66.3),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
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
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 3, 8.9, 0),
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
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
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
                                Padding(
                                  padding: const EdgeInsets.only(top: 160.0),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 11, 0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0x80FEE9DB),
                                                borderRadius:
                                                    BorderRadius.circular(18.2),
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    17, 0, 18.6, 0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              10, 0, 0, 0),
                                                      child: Text(
                                                        'Latest',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 12,
                                                          height: 3,
                                                          color:
                                                              Color(0xFFF69454),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 15.8, 0, 15.8),
                                                      width: 14,
                                                      height: 14,
                                                      child: SizedBox(
                                                        width: 8.8,
                                                        height: 4.4,
                                                        child:
                                                            SvgPicture.network(
                                                          'assets/vectors/vector_43_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 11, 0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0x80FEE9DB),
                                                borderRadius:
                                                    BorderRadius.circular(18.2),
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    19, 0, 0, 0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 0, 0),
                                                      child: Text(
                                                        'All Rating',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 12,
                                                          height: 3,
                                                          color:
                                                              Color(0xFFF69454),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 15.9, 0, 15.7),
                                                      width: 14,
                                                      height: 14,
                                                      child: SizedBox(
                                                        width: 8.8,
                                                        height: 4.4,
                                                        child:
                                                            SvgPicture.network(
                                                          'assets/vectors/vector_730_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0x80FEE9DB),
                                              borderRadius:
                                                  BorderRadius.circular(18.2),
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  36, 0, 7.6, 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 11.9, 0),
                                                    child: Text(
                                                      'Good',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                        height: 3,
                                                        color:
                                                            Color(0xFFF69454),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 15.8, 0, 15.8),
                                                    width: 14,
                                                    height: 14,
                                                    child: SizedBox(
                                                      width: 8.8,
                                                      height: 4.4,
                                                      child: SvgPicture.network(
                                                        'assets/vectors/vector_1856_x2.svg',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 240, left: 10, right: 10),
                                  child: Container(
                                    margin:
                                        EdgeInsets.fromLTRB(1, 0, 21.1, 24.4),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 5.2),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              child: Text(
                                                'Station Review',
                                                style: GoogleFonts.getFont(
                                                  'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.4,
                                                  color: Color(0xFF333333),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text(
                                            'Rating and reviews are verified and are from people who use the service ',
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 9.6,
                                              color: Color(0xFF333333),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 320),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                          width: 308,
                                          height: 82,
                                          image: AssetImage('assets/aaa.png')),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 420),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                          width: 330,
                                          height: 280,
                                          image:
                                              AssetImage('assets/review.png')),
                                    ],
                                  ),
                                )
                              ],
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
    );
  }
}
