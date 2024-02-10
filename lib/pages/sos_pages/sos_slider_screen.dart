// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:page_transition/page_transition.dart';
import 'package:skyguard_adss/functions/location1.dart';
// import 'package:sos_adss/functions/audio.dart';

// import 'package:sos_adss/functions/location1.dart';
// import 'package:sos_adss/pages/home_pages/home_Screen.dart';

import 'package:swipeable_button_view/swipeable_button_view.dart';

class SOSSlider extends StatefulWidget {
  const SOSSlider({super.key});

  @override
  State<SOSSlider> createState() => _SOSSliderState();
}

class _SOSSliderState extends State<SOSSlider> {
  double value = 75;
  bool isFinished = false;
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0a1119),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 135),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 35.0),
                child: Text(
                  "Swipe Up ",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Text(
                "to raise SoS ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  // fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          SliderTheme(
            data: SliderThemeData(
                trackHeight: 100,
                thumbShape: SliderComponentShape.noOverlay,
                overlayShape: SliderComponentShape.noOverlay,
                activeTrackColor: const Color.fromARGB(255, 167, 24, 13),
                inactiveTrackColor: const Color.fromARGB(255, 10, 29, 38),
                tickMarkShape: SliderTickMarkShape.noTickMark,
                trackShape: const RectangularSliderTrackShape(),
                activeTickMarkColor: Colors.red,
                inactiveTickMarkColor: Colors.grey),
            child: SizedBox(
              height: 360,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  Expanded(
                    child: Stack(
                      children: [
                        RotatedBox(
                            quarterTurns: 3,
                            child: SwipeableButtonView(
                              buttonText:
                                  "      S      W     I     P     E       U     P   ",
                              buttontextstyle:
                                  const TextStyle(color: Colors.red),
                              buttonColor:
                                  const Color.fromARGB(255, 167, 24, 13),
                              activeColor:
                                  const Color.fromARGB(255, 10, 29, 38),
                              disableColor: Colors.red,
                              buttonWidget: const Icon(
                                Icons.arrow_right_rounded,
                                color: Colors.black,
                                size: 60,
                              ),
                              isFinished: isFinished,
                              onWaitingProcess: () {
                                Future.delayed(const Duration(seconds: 2), () {
                                  setState(() {
                                    isFinished = true;
                                  });
                                });
                              },
                              onFinish: () async {
                                await Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        child:  GetLocationPage()));
                                setState(() {
                                  isFinished = false;
                                });
                              },
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .3,
            decoration: const BoxDecoration(
              // height: 300.0,
              // width: 400.0,
              image: DecorationImage(
                image: AssetImage('images/adss_logo.png'),
                fit: BoxFit.contain,
              ),
              shape: BoxShape.rectangle,
            ),
          ),
        ],
      ),
    );
  }
}
