import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';


class MyTextField extends StatelessWidget {
  final String? label;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;


  const MyTextField({super.key, this.label, this.suffixIcon, this.prefixIcon , this.keyboardType = TextInputType.name});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
          keyboardType: keyboardType,
          textInputAction: TextInputAction.next,
          cursorColor: AppColors.kBlack,
          decoration: InputDecoration(
            hintText: label,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            focusedBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: AppColors.kBorderFieldColor),
              borderRadius: BorderRadius.circular(6.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(
                  color: AppColors.kBorderFieldColor
              ),
              borderRadius: BorderRadius.circular(6.r),
            ),
            filled: true,
            fillColor: AppColors.kWhite,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          )

      );
  }
}
