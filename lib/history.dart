import 'dart:async';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:cng/booking_screen.dart';
import 'package:cng/car_registration_screen.dart';
import 'package:cng/detailed_screen.dart';
import 'package:cng/splash1.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:cng/page4.dart' as page4;
import 'package:cng/page1.dart' as page1;
import 'package:cng/page2.dart' as page2;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cng/page3.dart' as page3;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

late LatLng _initialPosition;
final Set<Marker> _markers = {};

class history_screen extends StatefulWidget {
  @override
  State<history_screen> createState() => _SplashState();
}

class _SplashState extends State<history_screen> {
  final _pageController = PageController(initialPage: 1);

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
      const history(),
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
                // log('current selected index $index');
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
            )
          : null,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
    );
  }
}

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  State<history> createState() => historystate();
}

class historystate extends State<history> {
  // CalendarController _controller;
  // @override
  // void initState() {
  //   super.initState();
  //   _controller = CalendarController();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                      width: 72,
                      height: 56,
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
                    width: 227,
                    height: 56,
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
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 34.0),
                child: Text(
                  'History',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    height: 4,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 17, right: 17),
              child: Container(
                width: double.infinity,
                height: 606,
                decoration: BoxDecoration(
                    color: Color(
                      0xffF7F8FA,
                    ),
                    borderRadius: BorderRadius.circular(11)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 92,
                            height: 37,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(246, 218, 149, 128),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Petrol',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ],
                            ),
                          ),
                          Text('CNG'),
                          Text('Diesel'),
                          Text('Electric'),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                top: 7.2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF69454),
                                    borderRadius: BorderRadius.circular(20.9),
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
                                  padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
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
                                              child: Image.asset(
                                                'assets/fayar.png',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '125 Litr',
                                            style: GoogleFonts.getFont(
                                              'DM Sans',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              height: 4.8,
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
                                            'Total Consumption',
                                            style: GoogleFonts.getFont(
                                              'DM Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              height: 0,
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
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                top: 7.2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF69454),
                                    borderRadius: BorderRadius.circular(20.9),
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
                                  padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
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
                                              child: Image.asset(
                                                'assets/paisa.png',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '12500',
                                            style: GoogleFonts.getFont(
                                              'DM Sans',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              height: 4.8,
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
                                            'Total Expense',
                                            style: GoogleFonts.getFont(
                                              'DM Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              height: 0,
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
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Container(
                          child: Image(
                        image: AssetImage('assets/nakal.png'),
                      )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
