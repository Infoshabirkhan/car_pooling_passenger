import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              width: 1.sw,
              height: 1.sh,
              child: Image.asset("assets/images/pageview_pic_two.png",
                  fit: BoxFit.cover),
            ),
            Container(
              width: 1.sw,
              height: 1.sh,
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Car Pooling",
                            style: TextStyle(
                                color: AppColors.KBlack,
                                fontSize: 35.sp,
                                fontWeight: FontWeight.bold)),
                      )),
                  Spacer(),
                  Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Look for people going on your route",
                            style: TextStyle(
                              color: AppColors.kWhite,
                              fontSize: 15.sp,
                            )),
                      )),
                ],
              ),
            ),

            /* Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Car Pooling",style: TextStyle(color: AppColors.kWhite,fontSize: 35.sp,fontWeight: FontWeight.bold),),
          ),*/
          ],
        ));
  }
}
