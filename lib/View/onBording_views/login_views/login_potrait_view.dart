import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';
import '../../utils/custom_widgets/custom_button.dart';
import '../../verification_code_view/verification_code_screen.dart';

class LoginPotraitView extends StatelessWidget {
  const LoginPotraitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 40.sp, right: 40.sp),
      children: [
        SizedBox(
          height: 120.h,
        ),
        Center(
          child: Text(
            "Login",
            style: TextStyle(
                color: AppColors.kWhite,
                fontSize: 35.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 27.7.h,
        ),
        SizedBox(
            height: 159.58.h,
            child: Image.asset(
              "assets/images/phone_anim_one.png",
            )),
        SizedBox(
          height: 22.8.h,
        ),
        SizedBox(
          height: 41.h,
          child: TextField(
            style: TextStyle(color: AppColors.kWhite, fontSize: 15.sp),
            decoration: InputDecoration(
              hintText: "Email or Phone Number",
              hintStyle: TextStyle(color: AppColors.kWhite, fontSize: 15.sp),
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
        SizedBox(
          height: 200.h,
        ),
        CustomButton(
            text: 'Login',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const VerificationCodeScreen();
              }));
            },
            color: AppColors.kBlue)
      ],
    );
  }
}
