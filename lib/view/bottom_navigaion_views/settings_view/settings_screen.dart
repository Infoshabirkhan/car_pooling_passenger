import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appicons.dart';
import '../../user_profile_view/user_profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: ListView(
          padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
          children: [
            SizedBox(
              height: 37.h,
            ),
            Center(
                child: Align(
                    child: Icon(
              AppIcons.accountPerson,
              color: AppColors.kBlueLight,
              size: 100.sp,
            ))),
            SizedBox(
              height: 5.h,
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
              height: 6.h,
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                child: Text('Edit Profile',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.kBlue,
                    )),
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){

                    return  const UserProfileScreen();
                  }));
                },
              ),
            ),
            SizedBox(
              height: 40.h,
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
              height: 4.h,
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
              height: 20.h,
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
              height: 8.h,
            ),
            Text(
              'john12@gmial.com',
              style: TextStyle(
                fontSize: 15.sp,
                color: AppColors.kBlack,
              ),
            ),
            SizedBox(
              height: 15.h,
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
              height: 10.h,
            ),
            Text(
              'demo address here, street',
              style: TextStyle(
                fontSize: 15.sp,
                color: AppColors.kBlack,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 50.sp,right: 50.sp),
              height: 48.h,
              width: 173.w,
              color: const Color(0xffF3F3F3),
              child: Center(
                child: Text('Switch to Rider',style: TextStyle(
                  color: const Color(0xff57A3DE),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
                height: 50.h,
                width: 50.w,
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
      ),
    );
  }
}
