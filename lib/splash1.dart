import 'dart:async';
import 'package:cng/otp_screen.dart';
import 'package:cng/wait_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Splash1 extends StatefulWidget {
  @override
  State<Splash1> createState() => _SplashState1();
}

// Define your new screen widget
TextEditingController textFieldController = TextEditingController();

String number = textFieldController.text;

class _SplashState1 extends State<Splash1> {
  final TextEditingController textFieldController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String _verificationId = '';

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      // Any logic you want to execute after a delay can go here
    });
  }

  void _validateAndNavigate(BuildContext context) {
    if (textFieldController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter your mobile number'),
        ),
      );
    } else {
      _auth.verifyPhoneNumber(
        phoneNumber: textFieldController.text,
        timeout: Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
          // Handle auto sign-in if applicable
        },
        verificationFailed: (FirebaseAuthException e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Verification failed. Please try again.'),
            ),
          );
        },
        codeSent: (String verificationId, int? resendToken) {
          // Navigate to OtpScreen with the verificationId
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OtpScreen(
                text: textFieldController.text,
                verificationId: verificationId,
              ),
            ),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Container(
                height: 60,
                width: double.infinity,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 10, left: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
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
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Container(
                margin: EdgeInsets.fromLTRB(27, 0, 27, 0.5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Find nearby CNG stations with real-time wait times.',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      height: 1.2,
                      letterSpacing: 0.4,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 24,
              top: 185,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFE47B37),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  width: 10,
                  height: 10,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 185, left: 35),
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 273, 44.5),
                child: SizedBox(
                  width: 52,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x7D333333),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Container(
                            width: 10,
                            height: 10,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x7D333333),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Container(
                            width: 10,
                            height: 10,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x7D333333),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Container(
                            width: 10,
                            height: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 220,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/firefly_create_a_3_dblender_illustration_with_appropriate_colors_to_show_the_map_to_find_nearby_petr_1_removebg_preview_1.png',
                      ),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  width: double.infinity,
                  height: 379,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 550),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13),
                    topRight: Radius.circular(14),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40959595),
                      offset: Offset(0, -2),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: SizedBox(
                        width: double.infinity,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(26, 24.4, 26, 18),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(0, 0, 21.8, 10.0),
                                    child: Text(
                                      'Enter your Mobile Number',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        height: 1.2,
                                        letterSpacing: -0.4,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 32.1),
                                    child: Text(
                                      'We promise to never spam or share your personal information',
                                      style: GoogleFonts.getFont(
                                        'DM Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        height: 1.2,
                                        letterSpacing: 0.3,
                                        color: Color(0xFF626262),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(8, 0, 8, 58.8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 228.8,
                                          height: 50,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        10, 15, 9, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                            'assets/flag_1.png',
                                                          ),
                                                        ),
                                                      ),
                                                      child: Container(
                                                        width: 26,
                                                        height: 25.3,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 18, 0, 2.4),
                                                    child: Text(
                                                      '+91',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'DM Sans',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 18,
                                                        height: 1.1,
                                                        letterSpacing: 0.4,
                                                        color:
                                                            Color(0xFF626262),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Expanded(
                                                child: SingleChildScrollView(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        16, 3, 16, 58.8),
                                                    child: TextField(
                                                      controller:
                                                          textFieldController,
                                                      decoration:
                                                          InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.all(10),
                                                        border:
                                                            InputBorder.none,
                                                        hintText: '1212312331',
                                                        hintStyle: TextStyle(
                                                            color: Color(
                                                                0xFF626262)),
                                                      ),
                                                      keyboardType:
                                                          TextInputType.phone,
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'DM Sans',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 18,
                                                        height: 1.1,
                                                        letterSpacing: 0.6,
                                                        color:
                                                            Color(0xFF626262),
                                                      ),
                                                    ),
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
            GestureDetector(
              onTap: () {
                _validateAndNavigate(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 792, left: 50, right: 50),
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
                            'Send OTP',
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
          ]),
        ),
      ),
    );
  }
}
