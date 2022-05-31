import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:car_pooling_passanger/View/Matched%20Rides/custom_matched.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchedRides extends StatelessWidget {
  const MatchedRides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: ListView(
        padding: EdgeInsets.only(right: 20.sp),
        children: [
          SizedBox(
            height: 10.sp,
          ),
          CustomMatched.getCard(),
          SizedBox(
            height: 20.sp,
          ),
          CustomMatched.getCard(),
          SizedBox(
            height: 20.sp,
          ),
          CustomMatched.getCard(),
          SizedBox(
            height: 20.sp,
          ),
          CustomMatched.getCard(),
          SizedBox(
            height: 20.sp,
          ),
          CustomMatched.getCard(),
          SizedBox(
            height: 20.sp,
          ),
          CustomMatched.getCard(),
          SizedBox(
            height: 20.sp,
          ),
          CustomMatched.getCard(),
          SizedBox(
            height: 20.sp,
          ),
          CustomMatched.getCard(),
        ],
      ),
    );
  }
}
