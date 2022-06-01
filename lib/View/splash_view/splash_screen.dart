import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../onBording_views/onBoarding_main_screen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  SplashscreenState createState() => SplashscreenState();
}

class SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (_) => const OnBoardingScreen()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: -60.sp,
              top: -50.sp,
              child: Image.asset("assets/images/splash_circle_image.png")),
          Positioned(
              left: 86.sp,
              top: 59.sp,
              child: Image.asset("assets/images/location.png")),
          Center(child: Image.asset("assets/images/logo.png")),
          Positioned(
            left: 10.sp,
              bottom: 10.sp,
              child: Image.asset("assets/images/location.png")),

          Positioned(
            right: -60.sp,
              bottom: -80.sp,
              child: Image.asset("assets/images/splash_circle_image.png")),
        ],
      ),

    );
  }
}
