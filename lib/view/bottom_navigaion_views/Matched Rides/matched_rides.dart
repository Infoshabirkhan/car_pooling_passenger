import 'package:car_pooling_passanger/View/bottom_navigaion_views/Matched%20Rides/custom_matched.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../my_static_properites.dart';

class MatchedRides extends StatelessWidget {
  const MatchedRides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(

      elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Matched Rides',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(

        padding: EdgeInsets.only(left: 16.sp, right: 16.sp),

          itemCount: 10,
          itemBuilder: (context, index){

        return CustomMatched.getCard(onTap: (){


          // this will Navigate it to the Rider Detial Screen
          MyBottomNavigation.pageController.jumpToPage(3);
        });
      })
    );
  }
}
