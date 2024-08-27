// page5.dart
import 'package:cng/history.dart';
import 'package:cng/order_tracking.dart';
import 'package:cng/splash1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page4 extends StatelessWidget {
  final String name1;
  final String email1;
  final String phone1;

  // receive data from the FirstScreen as a parameter
  Page4(
      {Key? key,
      required this.name1,
      required this.email1,
      required this.phone1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                        'Settings',
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
            padding: const EdgeInsets.only(top: 120, left: 8, right: 8),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF6F6F6),
                borderRadius: BorderRadius.circular(29),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.fromLTRB(23, 21, 17.7, 71),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width:
                                54.0, // Set the width and height to the same value for a circle
                            height: 54.0,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/profile_image.jpg',
                                fit: BoxFit
                                    .cover, // Ensures the image covers the entire circle
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(20, 10, 12.5, 0),
                                child: SizedBox(
                                  child: Text(
                                    '' + name1,
                                    style: GoogleFonts.getFont(
                                      'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 19,
                                      letterSpacing: -0.4,
                                      color: Color(0xFF1C1C28),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(23, 0, 12.5, 0),
                                child: Text(
                                  '+91 -' + number,
                                  style: GoogleFonts.getFont(
                                    'DM Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    letterSpacing: 0.3,
                                    color: Color(0xFF8F90A6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Positioned(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(75, 4, 0, 0),
                                      child: Container(
                                        child: Text(
                                          '',
                                          style: GoogleFonts.getFont(
                                            'DM Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            height: 1.7,
                                            color: Color(0xFFF69454),
                                          ),
                                        ),
                                      ),
                                    ),
                                    // Container(
                                    //   margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    //   width: 16,
                                    //   height: 16,
                                    //   child: SizedBox(
                                    //     child: Icon(
                                    //       Icons.chevron_right_sharp,
                                    //       color: Color(0xffF69454),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  '' + email1,
                                  style: GoogleFonts.getFont(
                                    'DM Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    letterSpacing: 0.3,
                                    color: Color(0xFF8F90A6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(4, 0, 0.6, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(2, 0, 0, 32),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 4, 14, 18),
                                          width: 24,
                                          height: 24,
                                          child: SizedBox(
                                            width: 20,
                                            height: 17,
                                            child: SvgPicture.asset(
                                              'assets/vector_1848_x2.svg',
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    history(), // Replace with your new screen widget
                                              ),
                                            );
                                          },
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Your favorites',
                                                  style: GoogleFonts.getFont(
                                                    'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 15,
                                                    height: 1.5,
                                                    color: Color(0xFF1C1C28),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Reorder your favorite service in a click',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 10,
                                                  height: 1.6,
                                                  color: Color(0xFF8F90A6),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 14.8, 0, 14.8),
                                      width: 16,
                                      height: 16,
                                      child: SizedBox(
                                        width: 4.7,
                                        height: 9.4,
                                        child: SvgPicture.asset(
                                          'assets/vector_155_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 12, 15),
                                          child: SizedBox(
                                            width: 24,
                                            height: 24,
                                            child: SvgPicture.asset(
                                              'assets/icon_24_pxcredit_cardlight_1_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Payments',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                  height: 1.5,
                                                  color: Color(0xFF1C1C28),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Payment methods, Transaction History ',
                                              style: GoogleFonts.getFont(
                                                'DM Sans',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                height: 1.6,
                                                color: Color(0xFF8F90A6),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 14.8, 0, 14.8),
                                      width: 16,
                                      height: 16,
                                      child: SizedBox(
                                        width: 4.7,
                                        height: 9.4,
                                        child: SvgPicture.asset(
                                          'assets/vector_487_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(1.9, 0, 0, 33),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 2, 12.9, 1),
                                          width: 24,
                                          height: 24,
                                          child: SizedBox(
                                            width: 21.1,
                                            height: 20,
                                            child: SvgPicture.asset(
                                              'assets/container_91_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Manage Vehicle',
                                            style: GoogleFonts.getFont(
                                              'DM Sans',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                              height: 1.5,
                                              color: Color(0xFF1C1C28),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 7.3, 0, 6.3),
                                      width: 16,
                                      height: 16,
                                      child: SizedBox(
                                        width: 4.7,
                                        height: 9.4,
                                        child: SvgPicture.asset(
                                          'assets/vector_768_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 12, 15),
                                          child: SizedBox(
                                            width: 24,
                                            height: 24,
                                            child: SvgPicture.asset(
                                              'assets/icon_24_pxbelllight_1_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Notifications',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                  height: 1.5,
                                                  color: Color(0xFF1C1C28),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'View your past notifications',
                                              style: GoogleFonts.getFont(
                                                'DM Sans',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                height: 1.6,
                                                color: Color(0xFF8F90A6),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 14.8, 0, 14.8),
                                      width: 16,
                                      height: 16,
                                      child: SizedBox(
                                        width: 4.7,
                                        height: 9.4,
                                        child: SvgPicture.asset(
                                          'assets/vector_466_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 12, 15),
                                          child: SizedBox(
                                            width: 24,
                                            height: 24,
                                            child: SvgPicture.asset(
                                              'assets/icon_24_pxbriefcaselight_1_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Register as partner',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                  height: 1.5,
                                                  color: Color(0xFF1C1C28),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Want to list your service? Register with us',
                                              style: GoogleFonts.getFont(
                                                'DM Sans',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                height: 1.6,
                                                color: Color(0xFF8F90A6),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 14.8, 0, 14.8),
                                      width: 16,
                                      height: 16,
                                      child: SizedBox(
                                        width: 4.7,
                                        height: 9.4,
                                        child: SvgPicture.asset(
                                          'assets/vector_391_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 12, 15),
                                          width: 24,
                                          height: 24,
                                          child: SizedBox(
                                            width: 24,
                                            height: 24,
                                            child: SvgPicture.asset(
                                              'assets/info_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'About',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                  height: 1.5,
                                                  color: Color(0xFF1C1C28),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Privacy Policy, Terms of Services, Licenses',
                                              style: GoogleFonts.getFont(
                                                'DM Sans',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                height: 1.6,
                                                color: Color(0xFF8F90A6),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 14.8, 0, 14.8),
                                      width: 16,
                                      height: 16,
                                      child: SizedBox(
                                        width: 4.7,
                                        height: 9.4,
                                        child: SvgPicture.asset(
                                          'assets/vector_1424_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 12, 0),
                                        child: SizedBox(
                                          width: 24,
                                          height: 24,
                                          child: SvgPicture.asset(
                                            'assets/icon_24_pxlog_outlight_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                        child: Text(
                                          'Logout',
                                          style: GoogleFonts.getFont(
                                            'DM Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            height: 1.5,
                                            color: Color(0xFFE53535),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 7.3, 0, 7.3),
                                    width: 16,
                                    height: 16,
                                    child: SizedBox(
                                      width: 4.7,
                                      height: 9.4,
                                      child: SvgPicture.asset(
                                        'assets/vector_1748_x2.svg',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
      )),
    );
  }
}
