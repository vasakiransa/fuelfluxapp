import 'dart:async';
import 'package:cng/splash1.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      // Navigator.pushReplacement(
      // context,
      // MaterialPageRoute(
      // builder: (context) => Content(),
      // ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF000000),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 18),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: 441,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                      child: Align(
                        alignment: Alignment.topRight,
                        // child: Container(
                        //   decoration: BoxDecoration(
                        //     color: Color(0xFFFFFFFF),
                        //   ),
                        //   child: SizedBox(
                        //     width: 390,
                        //     child: Container(
                        //       padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
                        //       child: Column(
                        //         mainAxisAlignment: MainAxisAlignment.start,
                        //         crossAxisAlignment: CrossAxisAlignment.center,
                        //         children: [
                        //           Container(
                        //             decoration: BoxDecoration(
                        //               color: Color(0xFF000000),
                        //             ),
                        //             // child: Container(
                        //             //   width: 390,
                        //             //   height: 60,
                        //             //   padding:
                        //             //       EdgeInsets.fromLTRB(26, 12, 26, 17.2),
                        //             //   child: SizedBox(
                        //             //     width: 30.8,
                        //             //     height: 30.8,
                        //             //     child: SvgPicture.asset(
                        //             //       'assets/logo.svg',
                        //             //     ),
                        //             //   ),
                        //             // ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(26, 0, 88.1, 40),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30.8,
                              height: 30.8,
                              child: SvgPicture.asset(
                                'assets/logo.svg',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'FuelFlux',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  letterSpacing: 0.4,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/minister_sproposed_fuel_reform_afail_according_to_solidarity_removebg_preview_1.png',
                              ),
                            ),
                          ),
                          child: Container(
                            width: 441,
                            height: 280,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 180, 0),
                      child: Text(
                        'Fast',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          fontWeight: FontWeight.w700,
                          fontSize: 64,
                          height: 1,
                          letterSpacing: 1.3,
                          color: Color(0xFFF69454),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 60, 14),
                      child: Text(
                        'Reliable',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          fontWeight: FontWeight.w700,
                          fontSize: 64,
                          height: 1,
                          letterSpacing: 1.3,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 13.3, 22),
                      child: Text(
                        'Fuel Up Fast – Locate, Book, and Go!',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.2,
                          letterSpacing: 0.3,
                          color: Color(0xFF7B7A7A),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 255, 42),
                      child: SizedBox(
                        width: 52,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFE47B37),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                width: 10,
                                height: 10,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 1.5, 0, 1.5),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x7D333333),
                                  borderRadius: BorderRadius.circular(3.5),
                                ),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 1.5, 0, 1.5),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x7D333333),
                                  borderRadius: BorderRadius.circular(3.5),
                                ),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 1.5, 0, 1.5),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x7D333333),
                                  borderRadius: BorderRadius.circular(3.5),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Splash1()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 120, 91),
                        width: 181,
                        padding: EdgeInsets.fromLTRB(0, 18, 28, 18),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFE47B37)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'GET STARTED',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              height: 1.5,
                              letterSpacing: -0.2,
                              color: Color(0xB2FFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(51, 0, 0, 0),
                      width: 376,
                      height: 12,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF000000),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          width: 134,
                          height: 5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 174.7,
                bottom: 365,
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF000000)),
                  ),
                  child: Text(
                    '&',
                    style: GoogleFonts.getFont(
                      'DM Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 44,
                      height: 1.4,
                      letterSpacing: 0.9,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 0.6
                        ..color = Color(0xFFF69454), // Orange color for border
                      // color: Color(0xFFF69454),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 183.3,
                bottom: 153.5,
                child: Container(
                  width: 24,
                  height: 24,
                  child: SizedBox(
                    width: 7.5,
                    height: 15,
                    child: SvgPicture.asset(
                      'assets/vector_413_x2.svg',
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


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class FlutterApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Hostel Manager",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue
//       ),
//       home: spl,
//     ),
//   }
// }
