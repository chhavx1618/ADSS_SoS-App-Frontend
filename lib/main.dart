import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:page_transition/page_transition.dart';
import 'package:skyguard_adss/pages/home_pages/home_Screen.dart';

// import 'package:sos_adss/functions/audio1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        splash: 'images/adss_logo.png',
        splashIconSize: 400,
        duration: 2000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.rightToLeftWithFade,
        backgroundColor: Colors.black,
        nextScreen: const HomeScreen(),
      ),
      // home: MyHomePage(),
    );
  }
}
