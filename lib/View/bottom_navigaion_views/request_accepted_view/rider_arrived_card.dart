import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RiderArrivedCard extends StatelessWidget {
  final VoidCallback onTap;
  const RiderArrivedCard({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Positioned(
        left: 15.w,
        right: 15.w,
        bottom: 38.h,
        child: Container(
          color: Colors.white,
          width: 200.sp,
          height: 200.sp,
        ),
      ),
    );
  }
}
