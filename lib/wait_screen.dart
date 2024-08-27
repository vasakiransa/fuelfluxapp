import 'dart:async';
import 'package:cng/demo_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class wait_screen extends StatefulWidget {
  @override
  State<wait_screen> createState() => _SplashState();
}

class _SplashState extends State<wait_screen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the demo_screen after 2 seconds
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => demo_screen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 308,
                  height: 308,
                  child: Image.asset(
                    'assets/map.png',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160),
              child: Text(
                'Almost There',
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
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
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
          ],
        ),
      ),
    );
  }
}
