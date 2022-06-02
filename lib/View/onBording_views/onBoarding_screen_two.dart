import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Model/utils/appcolors.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: 1.sw,
              height: 1.sh,
              child: Image.asset("assets/images/pageview_pic_two.png",
                  fit: BoxFit.cover),
            ),
            SizedBox(
              width: 1.sw,
              height: 1.sh,
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Car Pooling",
                            style: TextStyle(
                                color: AppColors.kBlack,
                                fontSize: 35.sp,
                                fontWeight: FontWeight.bold)),
                      )),
                  const Spacer(),
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
