import 'package:car_pooling_passanger/View/bottom_navigaion_views/settings_view/settings_screen.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/travel_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_screen_views/home_screen.dart';



class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: (){},
        child: Icon(Icons.map),
      ),
      bottomNavigationBar: Container(
        height: 60.sp,
        color: Colors.white,
        child: Row(
          children: const [
            Expanded(child: Icon(Icons.home)),
            Expanded(child: Align(alignment: Alignment.center,child: Text('Travel'))),
            Expanded(child: Icon(Icons.settings))
          ],
        ),
      ),


      body: PageView(
        children: [
          HomeScreen(),
          TravelScreen(),
          SettingsScreen()
        ],
      ),
    );
  }
}
