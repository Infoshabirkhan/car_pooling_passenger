import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';


class RiderInformation extends StatelessWidget {
  final String heading1;
  final String heading2;
  final String headingDetail1;
  final String headingDetail2;



  const RiderInformation({Key? key, required this.heading1, required this.heading2, required this.headingDetail1, required this.headingDetail2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return             SizedBox(
      width: 271.sp,
      height: 35.sp,
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
                        fontSize: 12.sp,
                        color: AppColors.kGreySecondary,
                      ),
                    )),
                Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      heading2,
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 12.sp,
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
                        fontSize: 15.sp,
                        color: AppColors.kblackSecondary,
                      ),
                    )),
                Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      headingDetail2,
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 15.sp,
                        color: AppColors.kblackSecondary,
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
