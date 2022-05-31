import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appicons.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white),
      body: ListView(
        padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
        children: [
          SizedBox(
            height: 40.sp,
          ),
          Center(
              child: Align(
                  child: Icon(
            AppIcons.account_person,
            color: AppColors.bluelight,
            size: 100.sp,
          ))),
          SizedBox(
            height: 5.sp,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'John Doe',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.kBlack,
              ),
            ),
          ),
          SizedBox(
            height: 8.sp,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Edit Profile',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.kBlue,
              ),
            ),
          ),
          SizedBox(
            height: 40.sp,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  'Gender',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.sp,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  'Male',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    '+92 8782145 562',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.sp,
          ),
          Text(
            'Email Adress',
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.kBlack,
            ),
          ),
          SizedBox(
            height: 8.sp,
          ),
          Text(
            'john12@gmial.com',
            style: TextStyle(
              fontSize: 15.sp,
              color: AppColors.kBlack,
            ),
          ),
          SizedBox(
            height: 15.sp,
          ),
          Text(
            'Adress',
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.kBlack,
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Text(
            'demo address here, street',
            style: TextStyle(
              fontSize: 15.sp,
              color: AppColors.kBlack,
            ),
          ),
          SizedBox(
            height: 40.sp,
          ),
          Container(
            margin: EdgeInsets.only(left: 50.sp,right: 50.sp),
            height: 48.sp,
            width: 173.sp,
            color: Color(0xffF3F3F3),
            child: Center(
              child: Text('Switch to Rider',style: TextStyle(
                color: Color(0xff57A3DE),
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),
          SizedBox(
            height: 30.sp,
          ),
          SizedBox(
              height: 50.sp,
              width: 50.sp,
              child: Image.asset('assets/images/customer.png'),),
          Align(
            alignment: Alignment.center,
            child: Text('Contact Us',style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 12.sp,
              color: AppColors.kBlue,
            ),),
          ),
        ],
      ),
    );
  }
}
