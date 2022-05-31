import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Model/utils/appcolors.dart';

class TextFieldWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextFormField(
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          cursorColor: AppColors.KBlack,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: AppColors.kborderFieldColor),
              borderRadius: BorderRadius.circular(6.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(
                  color: AppColors.kborderFieldColor
              ),
              borderRadius: BorderRadius.circular(6.r),
            ),
            filled: true,
            fillColor: AppColors.kWhite,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          )

      ),
    );
  }
}
