import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:cng/booking_screen.dart';
import 'package:cng/car_registration_screen.dart';
import 'package:cng/detailed_screen.dart';
import 'package:cng/main_screen.dart';
import 'package:cng/order_tracking.dart';
import 'package:cng/petrol_pump.dart';
import 'package:cng/splash1.dart';
import 'package:flutter/cupertino.dart';
import 'package:cng/page4.dart' as page4;
import 'package:cng/page1.dart' as page1;
import 'package:cng/page2.dart' as page2;
import 'package:cng/page3.dart' as page3;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class bookingScreen extends StatefulWidget {
  final LocationData? userLocation; // Accept user location

  const bookingScreen({Key? key, required this.userLocation}) : super(key: key);

  @override
  State<bookingScreen> createState() => _bookingScreenState();
}

class _bookingScreenState extends State<bookingScreen> {
  final _pageController = PageController(initialPage: 0);
  late GoogleMapController mapController;
  late LatLng _initialPosition;
  final NotchBottomBarController _controller = NotchBottomBarController(index: 0);
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _initialPosition = widget.userLocation != null
        ? LatLng(widget.userLocation!.latitude!, widget.userLocation!.longitude!)
        : LatLng(19.0760, 72.8777); // Fallback to Mumbai if location is not available

    _addMarkers();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _addMarkers() {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('station1'),
          position: LatLng(40.713776, -74.005974), // Replace with actual coordinates
          infoWindow: InfoWindow(title: 'Indian Oil Petroleum', snippet: '~ 8 km'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomBarPages = [
      const page1.Page1(),
    page2.Page2(
        initialPosition: _initialPosition,
        markers: _markers,
      ),
      const page3.Page3(),
      page4.Page4(
        name1: 'Name', // Provide actual values or use variables
        email1: 'Email',
        phone1: 'Phone',
      ),
    ];

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
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
            inActiveItem: Icon(Icons.home_outlined, color: Colors.blueGrey),
            activeItem: Icon(Icons.home_filled, color: Colors.white),
            itemLabel: 'Page 1',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.send_outlined, color: Colors.blueGrey),
            activeItem: Icon(Icons.send_outlined, color: Colors.white),
            itemLabel: 'Page 2',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.map_outlined, color: Colors.blueGrey),
            activeItem: Icon(Icons.map_outlined, color: Colors.white),
            itemLabel: 'Page 3',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.person_outline_rounded, color: Colors.blueGrey),
            activeItem: Icon(Icons.person_outline_rounded, color: Colors.white),
            itemLabel: 'Page 4',
          ),
        ],
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
        kIconSize: 24.0,
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: bottomBarPages,
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  final LatLng initialPosition;
  final Set<Marker> markers;

  const Page2({
    Key? key,
    required this.initialPosition,
    required this.markers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          onMapCreated: (controller) {
            // Assuming you have a method to handle map creation
          },
          initialCameraPosition: CameraPosition(
            target: initialPosition,
            zoom: 14.0,
          ),
          markers: markers,
          myLocationEnabled: true, // Optional: To enable showing the user's current location
          compassEnabled: true, // Optional: To show the compass on the map
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 10, 75),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(31.5),
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(3, 4),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(16.5, 16.5, 31, 18),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) =>
                                  //         petrol_pump(), // Replace with your new screen widget
                                  //   ),
                                  // );
                                },
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(21),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/pump.png',
                                        ),
                                      ),
                                    ),
                                    child: Container(
                                      height: 136.5,
                                      padding: EdgeInsets.fromLTRB(
                                          10.6, 108.7, 10.6, 10.9),
                                      child: SizedBox(
                                        width: 48.6,
                                        height: 16.9,
                                        child: SvgPicture.network(
                                          'assets/vectors/group_4818011_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 43.5, 0, 3),
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // margin: EdgeInsets.fromLTRB(
                                            // 1, 0, 1.1, 31),
                                            child: Text(
                                              '58-12 Queens Blvd, Suite2  Queens, NY 11377',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                height: 1.4,
                                                color: Color(0xFF8D8D8D),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            page11() // Replace with your new screen widget
                                                        ),
                                                  );
                                                },
                                                child: Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 25, 0, 1),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(
                                                              0xFFF69454)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.4),
                                                      color: Color(0xFFF69454),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              10, 3, 10, 1),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(08),
                                                            child: Container(
                                                              child: SizedBox(
                                                                width: 16.2,
                                                                height: 16.4,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/group_9_x2.svg',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 2),
                                                            child: Text(
                                                              'Book',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 10,
                                                                height: 2.6,
                                                                letterSpacing:
                                                                    -0.2,
                                                                color: Color(
                                                                    0xFFFFFFFF),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          petrol_pump(), // Replace with your new screen widget
                                                    ),
                                                  );
                                                },
                                                child: Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 25, 13, 1),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color.fromARGB(
                                                              255, 31, 24, 24)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.4),
                                                      color: Color(0xFF000000),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              1, 3, 10, 1),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(9.0),
                                                            child: Container(
                                                              // margin: EdgeInsets
                                                              //     .fromLTRB(0, 6,
                                                              //         6.9, 17.1),
                                                              child: SizedBox(
                                                                width: 12,
                                                                height: 14,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/route.png',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 2.0),
                                                            child: Text(
                                                              'Route',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 10,
                                                                height: 2.6,
                                                                letterSpacing:
                                                                    -0.2,
                                                                color: Color(
                                                                    0xFFFFFFFF),
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
                                    Positioned(
                                      left: 0,
                                      top: 19,
                                      child: SizedBox(
                                        height: 36,
                                        child: Text(
                                          '~ 8 km',
                                          style: GoogleFonts.getFont(
                                            'DM Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            height: 3,
                                            letterSpacing: -0.1,
                                            color: Color(0xFF4A4A4A),
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
                      Positioned(
                        right: 3.5,
                        top: 10.5,
                        child: SizedBox(
                          height: 36,
                          child: Text(
                            'Indian Oil Petroleum',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.5,
                              height: 2,
                              letterSpacing: -0.2,
                              color: Color(0xFF000000),
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
      ],
      // color: Colors.green, child: const Center(child: Text('Page 2'))
    );
  }
}
