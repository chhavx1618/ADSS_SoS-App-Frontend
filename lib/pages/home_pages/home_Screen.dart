// ignore: file_names
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:skyguard_adss/pages/authentication_pages/sign_up_screen.dart';
// import 'package:sos_adss/pages/authentication_pages/sign_up_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0a1119),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const Image(image: AssetImage('images/home_img.png')),
            const SizedBox(height: 70),
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: const BoxDecoration(
                  color: Color(0xFF121a25),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 60.0),
                  // child:
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SoS",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 27,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        " at your fingertips",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),
                  const Text(
                    'Your Shield in the Storm: the SoS service app that insures security & relief at your fingertips',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  DotsIndicator(
                      dotsCount: 3,
                      position: 0,
                      reversed: false,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                          activeSize: const Size(38.0, 9.0),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          activeColor: const Color(0xFF14b79a),
                          color: Colors.grey)),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => const SignUpScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF14b79a),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
