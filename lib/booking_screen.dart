import 'dart:async';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:cng/car_registration_screen.dart';
import 'package:cng/splash1.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:cng/page4.dart' as page4;
import 'package:cng/page1.dart' as page1;
import 'package:cng/page2.dart' as page2;

import 'package:cng/page3.dart' as page3;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class booking_screen extends StatefulWidget {
  final String vehicle_num;

  // receive data from the FirstScreen as a parameter
  booking_screen({Key? key, required this.vehicle_num}) : super(key: key);
  @override
  State<booking_screen> createState() => _SplashState();
}

class _SplashState extends State<booking_screen> {
  final _pageController = PageController(initialPage: 1);

  /// Controller to handle bottom nav bar and also handles initial page
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 1);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomBarPages = [
      const page1.Page1(),
      const page11(),
      const page3.Page3(),
    ];
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: Colors.black,
              showLabel: true,
              textOverflow: TextOverflow.visible,
              maxLine: 1,
              shadowElevation: 5,
              kBottomRadius: 28.0,
              notchColor: Colors.black87,
              removeMargins: false,
              bottomBarWidth: 500,
              showShadow: false,
              durationInMilliSeconds: 300,
              itemLabelStyle: const TextStyle(fontSize: 10),
              elevation: 1,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_outlined,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 1',
                ),
                BottomBarItem(
                  inActiveItem:
                      Icon(Icons.send_outlined, color: Colors.blueGrey),
                  activeItem: Icon(
                    Icons.send_outlined,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 2',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.map_outlined,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.map_outlined,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 3',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person_outline_rounded,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.person_outline_rounded,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 4',
                ),
              ],
              onTap: (index) {
                // log('current selected index $index');
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
            )
          : null,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
    );
  }
}

String selectedVehicle = 'Honda Pulsar';

final List<Map<String, String>> vehicles = [
  {'name': 'Honda Pulsar', 'image': 'assets/pulser.png'},
  {'name': 'Yamaha R15', 'image': 'assets/r15.png'},
  {'name': 'Suzuki Gixxer', 'image': 'assets/gixxer.png'},
  {'name': 'Kawasaki Ninja', 'image': 'assets/ninja.png'},
];

DateTime selectedDate = DateTime.now();
TimeOfDay? _selectedTime;

Future<void> _selectTime(BuildContext context) async {
  final TimeOfDay? picked = await showTimePicker(
    context: context,
    initialTime: _selectedTime ?? TimeOfDay.now(),
  );
  if (picked != null && picked != _selectedTime) {
    // setState(() {
    //   _selectedTime = picked;
    // });
  }
}

Future<void> _selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: DateTime(2020),
    lastDate: DateTime(2101),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData.light().copyWith(
          primaryColor: Color(0xffF69454), // Color of the header
          hintColor: Color(0xffF69454), // Color of the selected date
          buttonTheme: ButtonThemeData(
              textTheme:
                  ButtonTextTheme.primary), // Color of the text on buttons
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                backgroundColor: Color(0xffF69454)), // Color of the date text
          ),
          dialogBackgroundColor:
              Colors.white, // Background color of the date picker
        ),
        child: child!,
      );
    },
  );
  if (picked != null && picked != selectedDate) {
    // setState(() {
    //   selectedDate = picked;
    // });
  }
}

// String selectedl = 'Honda Pulsar';

// final List<Map<String, String>> repes = [
//   {'money': '₹2500 ', 'l': '12L'},
//   {'money': '₹2500', 'l': '14L'},
//   {'name': '₹2500', 'l': '13L'},
//   {'money': '₹2500', 'l': '24L'},
// ];

class page11 extends StatefulWidget {
  const page11({Key? key}) : super(key: key);

  @override
  State<page11> createState() => _page11State();
}

class _page11State extends State<page11> {
  // CalendarController _controller;
  // @override
  // void initState() {
  //   super.initState();
  //   _controller = CalendarController();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                      width: 72,
                      height: 56,
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
                    width: 227,
                    height: 56,
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
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 34.0),
                child: Text(
                  'Booking',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    height: 4,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 100),
              child: Container(
                width: double.infinity,
                height: 700,
                decoration: BoxDecoration(
                    color: Color(0xfff6f6f6),
                    borderRadius: BorderRadius.circular(22)),
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 17, right: 17, top: 17),
                      child: Container(
                        width: double.infinity,
                        height: 390,
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(29)),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 27,
                      right: 27,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF69454),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: double.infinity, // Ensure container fits width
                        height: 102,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(16, 17, 0, 18.2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                    width: 23.2,
                                    height: 22,
                                    child: SvgPicture.asset(
                                      'assets/group_4818082_x2.svg',
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: 16.2,
                                  height: 19.8,
                                  child: SvgPicture.asset(
                                    'assets/vector_114_x2.svg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 76),
                      child: Text(
                        'Green Mountain Falls, CO 80819',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 4.3,
                          letterSpacing: -0.3,
                          color: Color.fromARGB(255, 241, 225, 225),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 77, left: 74),
                      child: Text(
                        'Starlight Petroleum',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 4.3,
                          letterSpacing: -0.3,
                          color: Color(0xCFFFFFFF),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 160),
                      child: Text('Select Services'),
                    ),
                    Positioned(
                      left: 27,
                      right: 27,
                      top: 185,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFEDEEF0)),
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFF6F6F6),
                        ),
                        child: SizedBox(
                          width: 340.7,
                          height: 114,
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Container(
                                    width: 65,
                                    height: 96,
                                    decoration: BoxDecoration(
                                        color: Color(0xfff69454),
                                        borderRadius:
                                            BorderRadius.circular(31.9)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            width: 26.9,
                                            height: 33.7,
                                            child: SvgPicture.asset(
                                              'assets/group_481856_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Petrol',
                                          style: GoogleFonts.getFont(
                                            'DM Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            letterSpacing: -0.2,
                                            color: Color(0xCFFFFFFF),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    width: 65,
                                    height: 96,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        color: Color(0xffffffff),
                                        borderRadius:
                                            BorderRadius.circular(31.9)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            width: 26.9,
                                            height: 33.7,
                                            child: SvgPicture.asset(
                                              'assets/group_4818541_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Deisel',
                                          style: GoogleFonts.getFont(
                                            'DM Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            letterSpacing: -0.2,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    width: 65,
                                    height: 96,
                                    decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(31.9)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            width: 26.9,
                                            height: 33.7,
                                            child: SvgPicture.asset(
                                              'assets/group_4818531_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Gas',
                                          style: GoogleFonts.getFont(
                                            'DM Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            letterSpacing: -0.2,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    width: 65,
                                    height: 96,
                                    decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(31.9)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            width: 26.9,
                                            height: 33.7,
                                            child: SvgPicture.asset(
                                              'assets/group_4818551_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Electrical',
                                          style: GoogleFonts.getFont(
                                            'DM Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            letterSpacing: -0.2,
                                            color: Color(0xff000000),
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 310),
                      child: Text('My Vehicle'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 340, left: 27, right: 27),
                      child: Container(
                        height: 39,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('' + vehicle, style: TextStyle(fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 17, right: 17, top: 420),
                      child: Container(
                        width: double.infinity,
                        height: 114,
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(29)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 438),
                      child: Text('Select Your Quantity'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 466, left: 27, right: 27),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200],
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedVehicle,
                            icon: Icon(Icons.arrow_drop_down),
                            isExpanded: true,
                            items: vehicles.map((vehicle) {
                              return DropdownMenuItem<String>(
                                value: vehicle['name'],
                                child: Row(
                                  children: [
                                    Image.asset(
                                      vehicle['image']!,
                                      width: 30,
                                      height: 30,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      vehicle['name']!,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                            onChanged: (value) {
                              // setState(() {
                              //   selectedVehicle = value!;
                              // });
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 17, right: 17, top: 547),
                      child: Container(
                        width: double.infinity,
                        height: 121,
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(29)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 560),
                      child: Text('Date and Time'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 585, left: 40, right: 40),
                      child: Container(
                        height: 65,
                        decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          border: Border.all(color: Color(0xffedeef0)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Icon(Icons.access_alarm),
                            ),
                            GestureDetector(
                              onTap: () {
                                _selectTime(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Text(
                                  "18:35",
                                  style: TextStyle(color: Color(0xfff69454)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: GestureDetector(
                                onTap: () => _selectDate(
                                    context), // Trigger the calendar dialog
                                child: Icon(Icons.calendar_today_outlined),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _selectDate(
                                  context), // Trigger the calendar dialog

                              child: Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Text(
                                  "19 March",
                                  style: TextStyle(color: Color(0xfff69454)),
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
            Padding(
              padding: const EdgeInsets.only(
                  top: 800, bottom: 110, left: 30, right: 30),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    barrierDismissible:
                        false, // Prevents dialog from closing on outside touch
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        title: Row(
                          children: [
                            CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFFE47B37)),
                            ),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Booking in Progress",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        content: Text(
                          "Please wait while we process your booking.",
                          style: TextStyle(fontSize: 16),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                              // Navigate to the next screen or perform other actions
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
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
                            'Book Now',
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
          ],
        ),
      ),
    );
  }
}
