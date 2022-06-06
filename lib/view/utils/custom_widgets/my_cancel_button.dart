import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCancelButton extends StatelessWidget {
  final double? height;
  final int? textSize;
  final VoidCallback onTap;

  const MyCancelButton(
      {Key? key, required this.onTap, this.height = 47, this.textSize = 15})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 46.h,
      right: 12.w,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 98.w,
          height: height!.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.r),
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 2)
              ]),
          child: Center(
            child: Text(
              'Cancel',
              style: TextStyle(
                color: Colors.red,
                fontSize: textSize!.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
