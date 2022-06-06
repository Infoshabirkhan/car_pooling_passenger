import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TowardDirectionLandscapeCard extends StatelessWidget {
  final VoidCallback onTap;

  const TowardDirectionLandscapeCard({Key? key, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: InkWell(
          onTap: onTap,
          child: Container(
            height: 300.h,
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 30.sp, top: 12.sp),
                  // color: Colors.blue,
                  child: Column(
                    children: [
                      Expanded(
                          child: Text(
                        'Distance',
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 6.sp,
                          color: AppColors.kGreySecondary,
                        ),
                      )),
                      Expanded(
                          child: Text(
                        '2.6 km',
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 8.sp,
                          color: AppColors.kBlackSecondary,
                        ),
                      ))
                    ],
                  ),
                )),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.only(
                        left: 30.sp,
                      ),
                      // color: Colors.yellow,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              // color: Colors.white,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                    alignment: Alignment.bottomLeft,
                                    //         color: Colors.blue,
                                    child: Text(
                                      'Estimated time',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        fontSize: 6.sp,
                                        color: AppColors.kGreySecondary,
                                      ),
                                    ),
                                  )),
                                  Expanded(
                                      child: Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '1hr 23min',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        fontSize: 8.sp,
                                        color: AppColors.kBlackSecondary,
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                    child: Image.asset(
                                        'assets/images/customer_care.png')),
                                Expanded(
                                    child: Text(
                                  'Emergency Call',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 6.sp,
                                    color: AppColors.kRedSecondary,
                                  ),
                                )),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          )),
    );
  }
}
