import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
   static Widget getTextField({required String hint,}){
   return Container(
      height: 42.sp,
      width: 322.sp,
      child: TextFormField(
        style: TextStyle(
          color: AppColors.kblackSecondary,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffBAD2E3)),
          ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.bluelight),
            ),
            hintText:hint,
          suffixIcon: Icon(Icons.search,color: AppColors.kblackSecondary,size: 30.sp,)
        ),
      ),
    );
  }
}
