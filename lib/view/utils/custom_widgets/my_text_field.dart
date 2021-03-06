import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final TextAlign? textAlignment;

  const MyTextField(
      {super.key,
      this.controller,
      this.label,
      this.suffixIcon,
      this.prefixIcon,
      this.keyboardType = TextInputType.name,
      this.textAlignment = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textAlign: textAlignment!,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.next,
        cursorColor: AppColors.kBlack,
        decoration: InputDecoration(
          hintText: label,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.kBorderFieldColor),
            borderRadius: BorderRadius.circular(6.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.kBorderFieldColor),
            borderRadius: BorderRadius.circular(6.r),
          ),
          filled: true,
          fillColor: AppColors.kWhite,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
          ),
        ));
  }
}
