import 'dart:async';
import 'package:cng/access_screen.dart';
import 'package:cng/splash1.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detailed_screen extends StatefulWidget {
  @override
  State<detailed_screen> createState() => _SplashState();
}

// Define your new screen widget
TextEditingController namec = TextEditingController();
TextEditingController emailc = TextEditingController();

TextEditingController passwordc = TextEditingController();
String name = namec.text;
String email = emailc.text;

class _SplashState extends State<detailed_screen> {
  void _validateAndNavigate() {
    String name = namec.text.trim();
    String email = emailc.text.trim();
    String password = passwordc.text.trim(); // Get password text

    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      // Show an alert if any field is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill out all fields'),
        ),
      );
    } else {
      // Navigate to the next screen if all fields are filled
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => access_screen(),
        ),
      );
    }
  }

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
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF000000),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF000000),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 32),
                            child: Container(
                              height: 60,
                              width: double.infinity,
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, bottom: 10, left: 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0),
                                      child: SizedBox(
                                        width: 30.8,
                                        height: 30.8,
                                        child: SvgPicture.asset(
                                          'assets/logo.svg',
                                        ),
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
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(33, 0, 33, 9),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Details',
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
                      Container(
                        margin: EdgeInsets.fromLTRB(33, 0, 33, 41),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Please enter your basic details ',
                            style: GoogleFonts.getFont(
                              'DM Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              height: 1.2,
                              letterSpacing: 0.2,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Full Name
                              Text("Full Name"),
                              SizedBox(height: 8.0),
                              TextField(
                                controller: namec,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person_2_outlined),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0), // Space between fields

                              // Email
                              Text("Email"),
                              SizedBox(height: 8.0),
                              TextField(
                                controller: emailc,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email_outlined),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0), // Space between fields

                              // Password
                              Text("Password"),
                              SizedBox(height: 8.0),
                              TextField(
                                controller: passwordc,
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock_outline),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(33, 0, 32, 36),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 30, left: 0, right: 0),
                              child: GestureDetector(
                                onTap: _validateAndNavigate,
                                child: Container(
                                  width: double.infinity,
                                  height: 59,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE47B37),
                                      borderRadius: BorderRadius.circular(29.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Text(
                                            'Next',
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
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1.4, 0, 0, 0),
                                child: Text(
                                  'or sign up with ',
                                  style: GoogleFonts.getFont(
                                    'DM Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.5,
                                    letterSpacing: -0.2,
                                    color: Color(0xFFAFAFAF),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 77),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 218,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/search_1.png',
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/facebook_1.png',
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/apple_logo_1.png',
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    width: 30,
                                    height: 30,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
