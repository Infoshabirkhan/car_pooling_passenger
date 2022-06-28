import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  final double? height;
  final int? textSize;
  final String text;
  final VoidCallback onTap;
  final Color color;

  const CustomButton(
      {Key? key,
      required this.text,
      required this.onTap,
      required this.color,
      this.height = 51,
      this.textSize = 20})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
          width: 296.w,
          height: widget.height!.h,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(6.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.kBlackSecondary.withOpacity(0.16),
                offset: const Offset(0, 3.0),
                blurRadius: 6.r,
              ),
            ],
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: widget.textSize!.sp,
                color: AppColors.kWhite,
              ),
            ),
          )),
    );
  }
}
