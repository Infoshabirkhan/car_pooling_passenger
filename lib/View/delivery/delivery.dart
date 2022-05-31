import 'package:car_pooling_passanger/View/delivery/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Model/utils/appcolors.dart';


class Delivery extends StatelessWidget {
  const Delivery ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: AppColors.kWhite,
        centerTitle: true,
        title: Text('Delivery',style: TextStyle(
          color: AppColors.kblackSecondary,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 27.sp,right: 27.sp),
        children: [
          SizedBox(
            height: 22.sp,
          ),
          Text('Pickup',style: TextStyle(
            fontSize: 15.sp,
          ),),
          SizedBox(
            height: 5.sp,
          ),
          CustomTextField.getTextField(hint: "Select a pick up location"),
          SizedBox(
            height: 20.sp,
          ),
          Text('Destination'),
          SizedBox(
            height: 5.sp,
          ),
          CustomTextField.getTextField(hint: "Select your destination"),
          SizedBox(height: 20.sp,),
          Text('Date and Time',style: TextStyle(
            fontSize: 15.sp,
            color: AppColors.kblackSecondary
          ),),
          SizedBox(
            height: 10.sp,
          ),
          Row(
            children: [
              Expanded(
                flex:1,
                child: Container(
                  margin: EdgeInsets.only(right: 20.sp),
                height: 52.sp,
                width: 56.sp,
                  decoration: BoxDecoration(
                      color: AppColors.kRed,
                    borderRadius: BorderRadius.circular(10.r)
                  ),
              ),),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topRight,
                margin: EdgeInsets.only(left: 10.sp),
                height: 42.sp,
                width: 56.sp,
                decoration: BoxDecoration(
                    color: AppColors.kGrey,
                    borderRadius: BorderRadius.circular(10.r)
                ),
              ),),
              Expanded(child: Container(
                margin: EdgeInsets.only(right: 10.sp),
                height: 42.sp,
                width: 100.sp,
                decoration: BoxDecoration(
                    color: AppColors.bluelight,
                    borderRadius: BorderRadius.circular(10.r)
                ),
              ),),
              Expanded(child: Container(
                margin: EdgeInsets.only(right: 10.sp),
                height: 42.sp,
                width:56.sp,
                decoration: BoxDecoration(
                    color: AppColors.kRed,
                    borderRadius: BorderRadius.circular(10.r)
                ),
              ),),
              // Expanded(
              //     flex: 1,
              //     child: Container())
            ],
          )
        ],
      ),
    );
  }
}
