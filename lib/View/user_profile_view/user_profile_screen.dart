import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:car_pooling_passanger/View/user_profile_view/textField_widget.dart';
import 'package:car_pooling_passanger/View/utils/custom_widgets/elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bottom_navigaion_views/bottom_navigaion_screen.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 27.sp, right: 26.sp),
        child: ListView(
          children: [
            SizedBox(
              height: 22.sp,
            ),
            Center(
              child: Text(
                "User Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: AppColors.KBlack),
              ),
            ),
            SizedBox(
              height: 51.3.sp,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: Icon(
                    AppIcons.account_person,
                    size: 97.sp,
                    color: Color(0xFFBAD2E3),
                  ),
                ),
                Positioned(
                    top: 76.sp,
                    left: 178.sp,
                    child: Center(
                        child: Container(
                            width: 29.25.sp,
                            height: 29.25.sp,
                            decoration: BoxDecoration(
                                color: AppColors.kBlue,
                                borderRadius: BorderRadius.circular(30.r)),
                            child: Icon(Icons.add)))),
              ],
            ),
            SizedBox(
              height: 33.3.sp,
            ),
            Text(
              "Personal Information",
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.KBlack),
            ),
            SizedBox(
              height: 3.sp,
            ),
            Text(
              "Name",
              style: TextStyle(fontSize: 15.sp, color: AppColors.kGreyFourth),
            ),
            SizedBox(
              height: 5.sp,
            ),
            SizedBox(height: 42.sp,child: TextFieldWidget()),
            SizedBox(
              height: 18.sp,
            ),
            Text(
              "Email address",
              style: TextStyle(fontSize: 15.sp, color: AppColors.kGreyFourth),
            ),
            SizedBox(
              height: 5.sp,
            ),
            SizedBox(height: 42.sp,child: TextFieldWidget()),
            SizedBox(
              height: 18.sp,
            ),
            Text(
              "Address",
              style: TextStyle(fontSize: 15.sp, color: AppColors.kGreyFourth),
            ),
            SizedBox(
              height: 5.sp,
            ),
            SizedBox(height: 42.sp,child: TextFieldWidget()),
            SizedBox(
              height: 18.sp,
            ),
            Text(
              "Gender",
              style: TextStyle(fontSize: 15.sp, color: AppColors.kGreyFourth),
            ),
            SizedBox(
              height: 5.sp,
            ),
            SizedBox(height: 42.sp,child: TextFieldWidget()),
            SizedBox(
              height: 60.sp,
            ),
            MyElevatedButton(buttonName: "Save", onPress: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return BottomNavigationScreen();
              }));
            },),
            SizedBox(
              height: 14.sp,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Skip",
                  style:
                      TextStyle(fontSize: 15.sp, color: AppColors.kGreyFourth),
                )),
          ],
        ),
      ),
    );
  }
}
