import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Model/utils/appcolors.dart';
import '../../../../Model/utils/appicons.dart';
import '../../../../model/matched_rides_models.dart';

class MatchRidesLandScape extends StatelessWidget {
  final VoidCallback onTap;
  final MatchedRidesModel model;

  const MatchRidesLandScape({
    Key? key,
    required this.onTap,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10.sp, bottom: 10.sp),
        width: 156.w,
        height: 344.h,
        decoration: BoxDecoration(
          color: AppColors.kWhite,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              offset: const Offset(0, 3.0),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Icon(
                        AppIcons.accountPerson,
                        size: 30.sp,
                        color: AppColors.kBlueLight,
                      )),
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'John Doe',
                        style: TextStyle(
                          color: AppColors.kBlackSecondary,
                          fontSize: 9.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 50.sp),
                      child: const Align(
                          alignment: Alignment.center, child: Text('4.5')),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(right: 30.sp),
                        child: Row(
                          children: [
                            Expanded(
                              child: Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 10.sp,
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 10.sp,
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 10.sp,
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                AppIcons.starHalf,
                                color: Colors.black,
                                size: 7.sp,
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                AppIcons.starOutlined,
                                color: Colors.black,
                                size: 7.sp,
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 20.sp),
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Icon(
                                        AppIcons.seatBooked,
                                        color: AppColors.kBlueIcon,
                                      )),
                                      Expanded(
                                          child: Icon(
                                        AppIcons.seatBooked,
                                        color: AppColors.kBlueIcon,
                                      )),
                                      Expanded(
                                          child: Icon(
                                        AppIcons.emptySeat,
                                        color: AppColors.kBlueIcon,
                                      )),
                                      Expanded(
                                          child: Icon(
                                        AppIcons.emptySeat,
                                        color: AppColors.kBlueIcon,
                                      ))
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    margin: EdgeInsets.only(right: 30.sp),
                                    child: Text(
                                      'RS. 200 ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.sp),
                                    ))),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(left: 25.sp),
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 3,
                              child: Text('Seat Available: 2'),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                  alignment: Alignment.centerRight,
                                  // color: Colors.red,
                                  margin: EdgeInsets.only(right: 30.sp),
                                  child: const Text('Cost per seat')),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
