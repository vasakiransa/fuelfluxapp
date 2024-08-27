import 'dart:async';
import 'package:cng/home_screen.dart';
import 'package:cng/splash1.dart';
import 'package:cng/wait_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class demo_screen extends StatefulWidget {
  @override
  State<demo_screen> createState() => _SplashState();
}

class _SplashState extends State<demo_screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(0, 0, 0, 35),
                    child: Text(
                      'Quick Walkthrough ',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        height: 1.2,
                        letterSpacing: 0.2,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Container(
                    width: 242,
                    height: 511,
                    // padding: EdgeInsets.fromLTRB(14.7, 155.8, 0, 0),
                    child: Container(
                      width: 56,
                      height: 56,
                      child: SizedBox(
                        width: 35.7,
                        height: 38.4,
                        child: Image.asset(
                          'assets/mobile.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 680),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              home_screen(), // Replace with your new screen widget
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 1, 96),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFE47B37),
                          borderRadius: BorderRadius.circular(29.5),
                        ),
                        child: Container(
                          width: 307,
                          padding: EdgeInsets.fromLTRB(0, 18, 17.6, 17),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Skip',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  height: 1.2,
                                  letterSpacing: -0.2,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
