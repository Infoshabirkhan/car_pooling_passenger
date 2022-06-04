import 'package:car_pooling_passanger/View/onBording_views/onBoarding_screen_two.dart';
import 'package:flutter/material.dart';

import 'login_views/login_screen.dart';
import 'onBoarding_screen_one.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          OnBoardingScreenOne(),
          OnBoardingScreenTwo(),
          LoginScreen(),
        ],
      ),
    );
  }
}
