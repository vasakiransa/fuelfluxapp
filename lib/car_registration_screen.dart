import 'dart:async';
import 'package:cng/confirmation_screen.dart';
import 'package:cng/splash1.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class car_registration_screen extends StatefulWidget {
  @override
  State<car_registration_screen> createState() => _SplashState();
}

// Define your new screen widget
TextEditingController textFieldController1 = TextEditingController();

String vehicle = textFieldController1.text;

class _SplashState extends State<car_registration_screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(16, 0, 0, 5),
                        child: Text(
                          'Add your vehicle',
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
                        margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        child: SizedBox(
                          width: 250,
                          height: 219,
                          child: SvgPicture.asset(
                            'assets/city_driver_rafiki_11_x2.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(35, 0, 35, 29),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Vehicle Registration Number',
                            style: GoogleFonts.getFont(
                              'DM Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 1.3,
                              letterSpacing: -0.1,
                              color: Color(0xFF565656),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 20, right: 20, bottom: 20),
                        child: TextField(
                          controller: textFieldController1,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'HR-26-CA-7406',
                            hintStyle: TextStyle(
                              color: Color(0xFF565656),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              height: 1.2,
                              letterSpacing: -0.8,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.orange), // Default border color
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.orange,
                                  width: 2.0), // Orange border when focused
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(39, 0, 39, 5),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 309,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFEE9DB),
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                  child: Container(
                                    width: 54,
                                    height: 54,
                                    child: Positioned(
                                      right: 13.7,
                                      bottom: 10.8,
                                      child: SizedBox(
                                        width: 16.3,
                                        height: 17.2,
                                        child: SvgPicture.asset(
                                          'assets/vector_344_x2.svg',
                                          width: 10,
                                          height: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFEE9DB),
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                  child: Container(
                                    width: 54,
                                    height: 54,
                                    padding: EdgeInsets.fromLTRB(9, 9, 10, 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/air_pollution_1.png',
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        width: 35,
                                        height: 35,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFEE9DB),
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                  child: Container(
                                    width: 54,
                                    height: 54,
                                    padding: EdgeInsets.fromLTRB(9, 9, 10, 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/traffic_light_1.png',
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        width: 35,
                                        height: 35,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFEE9DB),
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                  child: Container(
                                    width: 54,
                                    height: 54,
                                    padding:
                                        EdgeInsets.fromLTRB(11, 11, 12, 12),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/fuel_1.png',
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        width: 31,
                                        height: 31,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(38.5, 0, 31.8, 93),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 1, 18.3, 1),
                              child: Text(
                                'Vehicle\nInsurance',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.getFont(
                                  'DM Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.2,
                                  letterSpacing: -0.1,
                                  color: Color(0xFF565656),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 23.5, 0),
                              child: Text(
                                'Pollution\nCertificate',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.getFont(
                                  'DM Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.3,
                                  letterSpacing: -0.1,
                                  color: Color(0xFF565656),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15.4, 0),
                              child: Text(
                                'Traffic\nChallan',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.getFont(
                                  'DM Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.3,
                                  letterSpacing: -0.1,
                                  color: Color(0xFF565656),
                                ),
                              ),
                            ),
                            Text(
                              'CNG\nHydrotesting',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont(
                                'DM Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1.3,
                                letterSpacing: -0.1,
                                color: Color(0xFF565656),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 0, right: 0),
                        child: GestureDetector(
                          onTap: () {
                            if (textFieldController1.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Please fill out all fields'),
                                ),
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => confirmation_screen(
                                      text1:
                                          vehicle), // Replace with your new screen widget
                                ),
                              );
                            }
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
                      Positioned(
                        top: 20,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 10, 0, 87),
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
            ],
          ),
        ),
      ),
    );
  }
}
