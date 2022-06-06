import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/my_static_properites.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/custom_widgets/my_rating_stars.dart';

class RateRiderScreen extends StatelessWidget {
  const RateRiderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(



        body: SafeArea(
          child: Column(
            children: [

              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Align(

                              alignment: Alignment.bottomCenter ,
                              child: Text('Rs: 456',style: TextStyle(

                                  color: AppColors.kGreen,
                                  fontWeight: FontWeight.bold,fontSize: width > 600 ? 15.sp:30.sp),))),
                      Expanded(child: Align(

                          alignment: Alignment.center ,
                          child: Text('Your Fair',style: TextStyle(fontSize:  width > 600 ? 10.sp:15.sp   ),))),
                    ],
                  )),
              Expanded(child: Column(
                children: [
                  Expanded(child: MyRatingStars(initailRating: 4.5, itemSize: width > 600 ? 12: 25,color: AppColors.kBlue,)),
                  Expanded(child: Text(' How was your experience with the rider',style: TextStyle(fontSize: width > 600 ? 6.sp: 12.sp),)),
                  Expanded(child: InkWell(
                      onTap: (){

                        /// This will navigate it to Home screen which is
                        /// on index 0 in bottom navigation/ Page view
                        MyBottomNavigation.pageController.jumpToPage(0);
                      },

                      child: Text('Submit',style: TextStyle(color: AppColors.kBlue,fontSize: width > 600 ? 7.sp: 15.sp,fontWeight: FontWeight.bold),))),
                ],
              )),


               Spacer(flex: width > 600 ? 1 : 2,)

            ],
          ),
        )
    );
  }
}