import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';


class MyElevatedButton extends StatelessWidget {


  final String buttonName;
  final VoidCallback onPress;

  const MyElevatedButton({super.key, required this.buttonName,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(296.sp, 51.sp),
          primary: AppColors.kBlue,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
        ),
        onPressed: onPress,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: Text(
              buttonName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
              ),
            ),
          ),
        ]));
  }
}
