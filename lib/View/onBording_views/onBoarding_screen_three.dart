import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bottom_navigaion_views/bottom_navigaion_screen.dart';

class OnBoardingScreenThree extends StatelessWidget {
  const OnBoardingScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 1.sw,
            height: 1.sh,
            color: AppColors.kBlue,
            child: Image.asset("assets/images/pageview_pic_one.png",
                fit: BoxFit.cover),
          ),
          Container(
            width: 1.sw,
            height: 1.sh,
            color: AppColors.kBlue.withOpacity(0.5),
          ),

          ListView(
            padding: EdgeInsets.only(left: 40.sp,right: 40.sp),
            children: [
              SizedBox(height: 120.sp,),
              Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: AppColors.kWhite,
                      fontSize: 35.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 27.7.sp,),
              Container(height:159.58.sp,child: Image.asset("assets/images/phone_anim_one.png",)),
              SizedBox(height: 22.8.sp,),
              Container(
                height: 41.sp,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email or Phone Number",
                    hintStyle:  TextStyle(color: AppColors.kWhite,fontSize: 15.sp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFBAD2E3),
                      ),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFBAD2E3)),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    contentPadding:
                    EdgeInsets.only(left: 20.sp, top: 10.sp, bottom: 12.sp),

                  ),
                ),
              ),
              SizedBox(height: 259.sp,),
       ElevatedButton(
    style: ElevatedButton.styleFrom(
        fixedSize: Size(296.sp, 51.sp),
    primary: AppColors.kBlue,
    shape:
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
    ),
    onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_){
        return BottomNavigationScreen();
      }));
    },
    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Expanded(
    child: Text(
    "Login",
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 20.sp,
    color: Colors.white,
    ),
    ),
    ),
    ])),
            ],
          ),
        ],
      ),
    );
  }
}
