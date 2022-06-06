import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../bottom_navigaion_views/bottom_navigaion_screen.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: ListView(
          padding: EdgeInsets.only(left: 63.5, right: 62.5.sp),
          children: [
            SizedBox(
              height: 166.h,
            ),
            Center(
                child: Text(
              "Enter Verification Code",
              style: TextStyle(
                  fontSize: width > 600 ? 10.sp:20.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kBlue),
            )),
            SizedBox(
              height: 23.h,
            ),
            Center(
                child: Text(
              "We have sent a verification code\nto your phone number",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: width > 600 ? 8.sp:15.sp, color: const Color(0xFF9A9A9A)),
            )),
            SizedBox(
              height: 101.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.sp),
              child: PinCodeTextField(
                  textStyle: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    selectedColor: Colors.green,
                    inactiveColor: AppColors.kGreySecondary,
                    activeColor: Colors.green,
                  ),
                  appContext: context,
                  length: 4,
                  onChanged: (value) {
                    if (value.length == 4) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const BottomNavigationScreen();
                      }));
                    } else {}
                  }),
            ),

            SizedBox(
              height: 23.h,
            ),
            const Center(
                child: Text(
              "4 digit",
              style: TextStyle(color: Color(0xFF9A9A9A)),
            )),
            SizedBox(
              height: 170.h,
            ),
            // MyElevatedButton(
            //   buttonName: "Verify",
            //   onPress: () {
            //     Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            //       return const UserProfileScreen();
            //     }));
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
