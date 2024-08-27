import 'dart:async';
import 'package:cng/car_registration_screen.dart';
import 'package:cng/splash1.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class access_screen extends StatefulWidget {
  @override
  State<access_screen> createState() => _SplashState();
}

class _SplashState extends State<access_screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 77.2),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(22, 13, 27, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 1, 7.5, 1),
                          child: SizedBox(
                            width: 28,
                            child: Text(
                              '8:23',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                letterSpacing: 0.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 59,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF000000),
                                  ),
                                  child: Container(
                                    width: 12,
                                    height: 12,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 17,
                                height: 17,
                                child: SvgPicture.network(
                                  'assets/vectors/polygon_148_x2.svg',
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF000000),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Container(
                                    width: 12,
                                    height: 12,
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
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 54.2),
                child: SizedBox(
                  width: 289.6,
                  height: 289.6,
                  child: SvgPicture.asset(
                    'assets/group_481756_x2.svg',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 2, 23),
                  child: Text(
                    'Would you like to explore nearby fuel stations?',
                    textAlign: TextAlign.center,
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
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 72),
                  child: Text(
                    'Allow FuelFlux to use your location once, or while using the app',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'DM Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.3,
                      letterSpacing: -0.2,
                      color: Color(0xFF565656),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 0, right: 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            car_registration_screen(), // Replace with your new screen widget
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      width: double.infinity,
                      height: 59,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFE47B37),
                          borderRadius: BorderRadius.circular(29.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Allow Location Services',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  height: 1.2,
                                  letterSpacing: -0.2,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  margin: EdgeInsets.fromLTRB(5, 20, 0, 7),
                  child: Text(
                    'Maybe Later',
                    style: GoogleFonts.getFont(
                      'DM Sans',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      height: 1.1,
                      letterSpacing: -0.3,
                      color: Color(0xFF8D8D8D),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
