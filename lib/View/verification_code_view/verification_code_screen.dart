import 'dart:ui';

import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/View/utils/custom_widgets/elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../user_profile_view/user_profile_screen.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 63.5, right: 62.5.sp),
        child: ListView(
          children: [
            SizedBox(
              height: 166.sp,
            ),
            Center(
                child: Text(
              "Enter Verification Code",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kBlue),
            )),
            SizedBox(
              height: 23.sp,
            ),
            Center(
                child: Text(
              "We have sent a verification code\nto your phone number",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.sp, color: Color(0xFF9A9A9A)),
            )),
            SizedBox(
              height: 101.sp,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 15.sp),
                        width: 51.sp,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                        ))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 15.sp),
                        child: const TextField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                        ))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 15.sp),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                        ))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 15.sp),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                        ))),
              ],
            ),
            SizedBox(
              height: 23.sp,
            ),
            Center(
                child: Text(
              "4 digit",
              style: TextStyle(color: Color(0xFF9A9A9A)),
            )),
            SizedBox(
              height: 170.sp,
            ),
            MyElevatedButton(
              buttonName: "Verify",
              onPress: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return UserProfileScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
