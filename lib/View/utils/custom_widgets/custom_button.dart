import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback ontap;
  final Color color;
  const CustomButton({Key? key,required this.text,required this.ontap,required this.color}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Padding(

        padding: EdgeInsets.only(left: 3.sp,right: 39.sp),
        child: Container(

            width: 296.sp,
            height: 51.sp,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(6.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.kblackSecondary.withOpacity(0.16),
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
                fontSize: 20.sp,
                color: AppColors.kWhite,
              ),
            ),
          )
        ),
      ),
    );
  }
}
