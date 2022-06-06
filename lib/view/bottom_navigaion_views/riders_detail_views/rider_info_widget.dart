import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';

class RiderInformation extends StatelessWidget {
  final double? textSize;
  final String heading1;
  final String heading2;
  final String headingDetail1;
  final String headingDetail2;

  const RiderInformation(
      {Key? key,
      this.textSize = 12,
      required this.heading1,
      required this.heading2,
      required this.headingDetail1,
      required this.headingDetail2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: 271.w,
      height: size.width > 600 ? 60.h : 35.h,
      // color: Colors.green,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  heading1,
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: textSize!.sp,
                    color: AppColors.kGreySecondary,
                  ),
                )),
                Expanded(
                    child: Text(
                  textAlign: TextAlign.center,
                  heading2,
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: textSize!.sp,
                    color: AppColors.kGreySecondary,
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  headingDetail1,
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: textSize! + 3.sp,
                    color: AppColors.kBlackSecondary,
                  ),
                )),
                Expanded(
                    child: Text(
                  textAlign: TextAlign.center,
                  headingDetail2,
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: textSize! + 3.sp,
                    color: AppColors.kBlackSecondary,
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
