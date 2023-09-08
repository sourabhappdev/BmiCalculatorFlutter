import 'dart:async';

import 'package:bmi/screens/input_page.dart';
import 'package:flutter/material.dart';


class Splashscreen extends StatefulWidget {

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => InputPage(),
          ),
      );

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a0e21),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BMI',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 55,
            ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'CALCULATOR',
              style: TextStyle(
                color: Color(0xff8d8e98),
                fontSize: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
