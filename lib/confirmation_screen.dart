import 'dart:async';
import 'dart:ui';
import 'package:cng/car_registration_screen.dart';
import 'package:cng/splash1.dart';
import 'package:cng/wait_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class confirmation_screen extends StatefulWidget {
  final String text1;

  // receive data from the FirstScreen as a parameter
  confirmation_screen({Key? key, required this.text1}) : super(key: key);
  @override
  State<confirmation_screen> createState() => _SplashState();
}

class _SplashState extends State<confirmation_screen> {
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
                margin: EdgeInsets.fromLTRB(0, 0, 0, 43),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(22, 13, 27, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Text(
                  'My vehicle!',
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
              Container(
                margin: EdgeInsets.fromLTRB(28, 0, 29, 24),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFC8C7C7)),
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xFFF3F3F3),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 14, 20.6, 16.9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 15.4, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(16.2),
                            ),
                            child: SizedBox(
                              height: 143.1,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0.4, 72, 0, 28.3),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Transform(
                                      transform: Matrix4.identity()
                                        ..rotateZ(
                                            -0.3653788834), // Correct method for rotation
                                      child: ImageFiltered(
                                        imageFilter: ImageFilter.blur(
                                          sigmaX: 7.5,
                                          sigmaY: 7.5,
                                        ),
                                        child: SizedBox(
                                          width: 77.1,
                                          height: 16.3,
                                          child: SvgPicture.asset(
                                            'assets/ellipse_512_x2.svg', // Corrected the path to match standard Flutter assets folder structure
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 3.7,
                                      right: 3.1,
                                      top: -71,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/image_58_removebg_preview_11.png',
                                            ),
                                          ),
                                        ),
                                        child: Container(
                                          width: 110.7,
                                          height: 124.2,
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
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 6.1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(4.1, 0, 0, 2),
                                  child: Text(
                                    '' + textFieldController1.text,
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      height: 1.2,
                                      letterSpacing: -0.8,
                                      color: Color(0xFF565656),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(4.1, 0, 8.3, 9),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Chassis Number :',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 8,
                                                  height: 2.2,
                                                  letterSpacing: -0.1,
                                                  color: Color(0xFF565656),
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                '1HGCM82633A123456',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  height: 2.2,
                                                  letterSpacing: -0.2,
                                                  color: Color(0xFF080808),
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 15.5, 3),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Model :',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 8,
                                                  height: 2.2,
                                                  letterSpacing: -0.1,
                                                  color: Color(0xFF565656),
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                'BAJAJ AUTO LTD - 135 - LS',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  height: 2.2,
                                                  letterSpacing: -0.2,
                                                  color: Color(0xFF080808),
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 17.7, 3),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Registration Date :',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 8,
                                                  height: 2.2,
                                                  letterSpacing: -0.1,
                                                  color: Color(0xFF565656),
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                'March 2022',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  height: 2.2,
                                                  letterSpacing: -0.2,
                                                  color: Color(0xFF080808),
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Vehicle Class  :',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 8,
                                                  height: 2.2,
                                                  letterSpacing: -0.1,
                                                  color: Color(0xFF565656),
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Bike',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  height: 2.2,
                                                  letterSpacing: -0.2,
                                                  color: Color(0xFF080808),
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFFFFA726)),
                                          borderRadius:
                                              BorderRadius.circular(27.5),
                                          color: Color(0xFFFFE8C6),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              7.2, 0, 6.1, 0.2),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 2.1, 6, 1.9),
                                                child: SizedBox(
                                                  width: 11.3,
                                                  height: 14.1,
                                                  child: SvgPicture.asset(
                                                    'assets/group_4817873_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Petrol ',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 8.8,
                                                  height: 2.2,
                                                  letterSpacing: -0.2,
                                                  color: Color(0xFF565656),
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFFFFEB3B)),
                                          borderRadius:
                                              BorderRadius.circular(27.5),
                                          color: Color(0xFFFDFAE5),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              7.2, 0, 8.4, 0.2),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 2.1, 6, 2),
                                                child: SizedBox(
                                                  width: 11.3,
                                                  height: 14.1,
                                                  child: SvgPicture.asset(
                                                    'assets/group_4817852_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Electric',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 8.8,
                                                  height: 2.2,
                                                  letterSpacing: -0.2,
                                                  color: Color(0xFF565656),
                                                ),
                                                overflow: TextOverflow.ellipsis,
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
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(28, 0, 29, 220),
                padding: EdgeInsets.fromLTRB(0, 17.8, 0, 16.8),
                // decoration: BoxDecoration(
                // border: Border.all(color: Color(0xFFF69454)),
                // borderRadius: BorderRadius.circular(10),
                // ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 00, left: 0, right: 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            wait_screen(), // Replace with your new screen widget
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
                                'Finish',
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
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 12.5, 84),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 3.2, 16, 3.2),
                      width: 17.6,
                      height: 17.6,
                      padding: EdgeInsets.fromLTRB(4, 4.8, 3.2, 4.8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF8C8C8C)),
                        borderRadius: BorderRadius.circular(3.2),
                      ),
                      child: Container(
                        width: 16,
                        height: 16,
                        child: SizedBox(
                          width: 10.4,
                          height: 8,
                          child: SvgPicture.asset(
                            'asset/vector_562_x2.svg',
                          ),
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'I agree to the ',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: -0.2,
                          color: Color(0xFF8C8C8C),
                        ),
                        children: [
                          TextSpan(
                            text: 'T & C',
                            style: GoogleFonts.getFont(
                              'DM Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              height: 1.3,
                              letterSpacing: -0.2,
                              color: Color(0xFF8C8C8C),
                              decorationColor: Color(0xFF8C8C8C),
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
      ),
    );
  }
}
