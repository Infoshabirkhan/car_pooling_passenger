import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/my_static_properites.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/custom_widgets/my_rating_stars.dart';

class RateRiderScreen extends StatelessWidget {
  const RateRiderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(



        body: SafeArea(
          child: Column(
            children: [

              Expanded(
                  flex: 2,
                  child: Container(

                    child: Column(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Container(
                              child: Align(

                                  alignment: Alignment.bottomCenter ,
                                  child: Text('Rs: 456',style: TextStyle(

                                      color: AppColors.kGreen,
                                      fontWeight: FontWeight.bold,fontSize: 30.sp),)),
                            )),
                        Expanded(child: Container(
                          child: Align(

                              alignment: Alignment.center ,
                              child: Text('Your Fair',style: TextStyle(fontSize: 15.sp),)),
                        )),
                      ],
                    ),
                  )),
              Expanded(child: Container(

                child: Column(
                  children: [
                    Expanded(child: MyRatingStars(initailRating: 4.5, itemSize: 25,color: AppColors.kBlue,)),
                    Expanded(child: Text(' How was your experience with the rider',style: TextStyle(fontSize: 12.sp),)),
                    Expanded(child: InkWell(
                        onTap: (){
                          MyBottomNavigation.pageController.jumpToPage(0);
                        },

                        child: Text('Submit',style: TextStyle(color: AppColors.kBlue,fontSize: 15.sp,fontWeight: FontWeight.bold),))),
                  ],
                ),
              )),


              Spacer(flex: 2,)

            ],
          ),
        )
    );
  }
}