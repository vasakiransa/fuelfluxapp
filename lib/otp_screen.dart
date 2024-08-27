import 'dart:async';
import 'package:cng/detailed_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OtpScreen extends StatefulWidget {
  final String text;
  final String verificationId;

  OtpScreen({Key? key, required this.text, required this.verificationId})
      : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otpController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Timer? _timer;
  int _start = 30;

  final TextEditingController _otpController1 = TextEditingController();
  final TextEditingController _otpController2 = TextEditingController();
  final TextEditingController _otpController3 = TextEditingController();
  final TextEditingController _otpController4 = TextEditingController();

  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start == 0) {
        timer.cancel();
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
    _focusNode4.dispose();
    _otpController.dispose();
    _otpController1.dispose();
    _otpController2.dispose();
    _otpController3.dispose();
    _otpController4.dispose();
    super.dispose();
  }

  void _onOtpChanged(String value, int index) {
    if (value.isEmpty) {
      switch (index) {
        case 1:
          _focusNode1.requestFocus();
          break;
        case 2:
          _focusNode2.requestFocus();
          break;
        case 3:
          _focusNode3.requestFocus();
          break;
        case 0:
          _focusNode1.unfocus();
          break;
      }
    } else if (value.length == 1) {
      switch (index) {
        case 0:
          _focusNode2.requestFocus();
          break;
        case 1:
          _focusNode3.requestFocus();
          break;
        case 2:
          _focusNode4.requestFocus();
          break;
        case 3:
          _focusNode4.unfocus();
          break;
      }
    }
  }

  void _verifyOTP(BuildContext context) async {
    String smsCode = _otpController1.text +
        _otpController2.text +
        _otpController3.text +
        _otpController4.text;

    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: widget.verificationId,
      smsCode: smsCode,
    );

    try {
      UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      if (userCredential.user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => detailed_screen()),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid OTP'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
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
                    'Confirm OTP',
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
            Padding(
              padding: const EdgeInsets.only(top: 145),
              child: Container(
                margin: EdgeInsets.fromLTRB(27, 0, 27, 0.5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'A verification code has been sent to ' + widget.text,
                    style: GoogleFonts.getFont('DM Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.3,
                        letterSpacing: -0.8,
                        color: Color(0xff353535)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 210),
              child: Container(
                margin: EdgeInsets.fromLTRB(26, 0, 29, 36),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 37, 0),
                        decoration: BoxDecoration(
                          // border: Border.all(color: Color(0xFFFFC097)),
                          borderRadius: BorderRadius.circular(9),
                          color: Color(0xFFF4F4F4),
                        ),
                        child: TextField(
                          controller: _otpController1,
                          focusNode: _focusNode1,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                          onChanged: (value) => _onOtpChanged(value, 0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 37, 0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFEDEEF0)),
                          borderRadius: BorderRadius.circular(9),
                          color: Color(0xFFF4F4F4),
                        ),
                        child: TextField(
                          controller: _otpController2,
                          focusNode: _focusNode2,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                          onChanged: (value) => _onOtpChanged(value, 1),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 37, 0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFEDEEF0)),
                          borderRadius: BorderRadius.circular(9),
                          color: Color(0xFFF4F4F4),
                        ),
                        child: TextField(
                          controller: _otpController3,
                          focusNode: _focusNode3,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                          onChanged: (value) => _onOtpChanged(value, 2),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 37, 0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFEDEEF0)),
                          borderRadius: BorderRadius.circular(9),
                          color: Color(0xFFF4F4F4),
                        ),
                        child: TextField(
                          controller: _otpController4,
                          focusNode: _focusNode4,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                          onChanged: (value) => _onOtpChanged(value, 3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 360, left: 30, right: 30),
              child: GestureDetector(
                onTap: () {
                  if (_otpController1.text.isEmpty ||
                      _otpController2.text.isEmpty ||
                      _otpController3.text.isEmpty ||
                      _otpController4.text.isEmpty) {
                    // Show an alert or a snackbar indicating that all fields must be filled
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter the OTP'),
                      ),
                    );
                  } else {
                    // All fields are filled, navigate to the next screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            detailed_screen(), // Replace with your new screen widget
                      ),
                    );
                  }
                },
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
                            'Verify',
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
              padding: const EdgeInsets.only(top: 290),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Positioned(
                    top: 290,
                    left: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Resend OTP in ',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            height: 1.2,
                            letterSpacing: 0.4,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Text(
                          '00:${_start.toString().padLeft(2, '0')}',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            height: 1.2,
                            letterSpacing: 0.4,
                            color: Color(0xFF000000),
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
    );
  }
}
