import 'dart:async';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:cng/car_registration_screen.dart';
import 'package:cng/detailed_screen.dart';
import 'package:cng/splash1.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:cng/page4.dart' as page4;
import 'package:cng/page1.dart' as page1;
import 'package:cng/page2.dart' as page2;
import 'package:location/location.dart';
import 'package:cng/page3.dart' as page3;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
late LocationData? userLocation; 
class nearby_screen extends StatefulWidget {
  @override
  State<nearby_screen> createState() => _SplashState();
}

class _SplashState extends State<nearby_screen> {
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
      const page22(),
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

class page22 extends StatefulWidget {
  const page22({Key? key}) : super(key: key);

  @override
  State<page22> createState() => _page22State();
}

class _page22State extends State<page22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 17, right: 17),
                child: Container(
                  width: double.infinity,
                  height: 406,
                  decoration: BoxDecoration(
                      color: Color(0xffF7F8FA),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(29),
                          topRight: Radius.circular(29))),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 9.0, bottom: 350, left: 50, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 48,
                      height: 27,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2 km',
                            style: TextStyle(
                                color: Color(0xffF69454), fontSize: 10),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(0xffFEE9DB)),
                    ),
                    Container(
                      width: 48,
                      height: 27,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2 km',
                            style: TextStyle(
                                color: Color(0xffF69454), fontSize: 10),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(0xffffffff)),
                    ),
                    Container(
                      width: 48,
                      height: 27,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2 km',
                            style: TextStyle(
                                color: Color(0xffF69454), fontSize: 10),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(0xffffffff)),
                    ),
                    Container(
                      width: 48,
                      height: 27,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2 km',
                            style: TextStyle(
                                color: Color(0xffF69454), fontSize: 10),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(0xffffffff)),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => page2
                        .bookingScreen( userLocation: userLocation!), // Replace with your new screen widget
                  ),
                );
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 250.0, right: 30, left: 30),
                  child: Stack(
                    children: [
                      Container(
                        height: 78,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1)),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 0, top: 5, left: 14),
                        child: Text(
                          'MSHSD JK PETROLEUM',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 0, top: 23, left: 14),
                        child: Text(
                          '2.1 KM   4 min away',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 0, top: 38, left: 14),
                        child: Text(
                          'HPC PETROL PUMP, SUR. NO. 221, TP10 PAL, PAL,\nADAJAN, SURAT CITY ',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, left: 270),
                        child: Image(
                          image: AssetImage('assets/hp.png'),
                          width: 51,
                          height: 51,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => page2
                        .bookingScreen( userLocation: userLocation!), // Replace with your new screen widget
                  ),
                );
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 160.0, right: 30, left: 30),
                  child: Stack(
                    children: [
                      Container(
                        height: 78,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1)),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 0, top: 5, left: 14),
                        child: Text(
                          'MSHSD JK PETROLEUM',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 0, top: 23, left: 14),
                        child: Text(
                          '2.1 KM   4 min away',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 0, top: 38, left: 14),
                        child: Text(
                          'HPC PETROL PUMP, SUR. NO. 221, TP10 PAL, PAL,\nADAJAN, SURAT CITY ',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, left: 270),
                        child: Image(
                          image: AssetImage('assets/ioil.png'),
                          width: 51,
                          height: 51,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => page2
                        .bookingScreen( userLocation: userLocation!), // Replace with your new screen widget
                  ),
                );
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 70.0, right: 30, left: 30),
                  child: Stack(
                    children: [
                      Container(
                        height: 78,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1)),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 0, top: 5, left: 14),
                        child: Text(
                          'MSHSD JK PETROLEUM',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 0, top: 23, left: 14),
                        child: Text(
                          '2.1 KM   4 min away',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 0, top: 38, left: 14),
                        child: Text(
                          'HPC PETROL PUMP, SUR. NO. 221, TP10 PAL, PAL,\nADAJAN, SURAT CITY ',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, left: 270),
                        child: Image(
                          image: AssetImage('assets/gg.png'),
                          width: 51,
                          height: 51,
                        ),
                      )
                    ],
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
