import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';
import '../../../Model/utils/appicons.dart';

class BookRideWidget extends StatelessWidget {
  final IconData myIcon;
  final String name;

  const BookRideWidget({Key? key, required this.myIcon, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.sp),
      padding: EdgeInsets.only(left: 14.sp, right: 16.sp),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 3)
      ]),
      height: 156.sp,
      width: 344.sp,
      child: Column(
        children: [
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Destination: Lahore",
                              style: TextStyle(
                                  color: AppColors.kBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold),
                            ))),
                    Expanded(
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Pick Up",
                              style: TextStyle(
                                  color: AppColors.kGreySecondary,
                                  fontSize: 12.sp),
                            ))),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "RS. 200",
                              style: TextStyle(
                                  color: AppColors.kBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold),
                            ))),
                    Expanded(
                        child: Text(
                      "Total Cost",
                      style:
                          TextStyle(color: AppColors.kBlack, fontSize: 12.sp),
                    )),
                  ],
                ),
              ),
            ],
          )),
          Expanded(
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Demo location , street demo",
                    style: TextStyle(
                      color: AppColors.kBlack,
                      fontSize: 15.sp,
                    ),
                  ))),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: 50.sp,
                        child: Row(
                          children: [
                            Expanded(
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      myIcon,
                                      color: AppColors.kBlueIcon,
                                    ))),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(
                                      myIcon,
                                      color: AppColors.kBlueIcon,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      name,
                      style: TextStyle(
                        color: AppColors.kBlack,
                        fontSize: 12.sp,
                      ),
                    )),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                        child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Date and Time",
                              style: TextStyle(
                                color: AppColors.kBlack,
                                fontSize: 12.sp,
                              ),
                            ))),
                    Expanded(
                        child: Text(
                      "12 Sep - 12:23 PM",
                      style: TextStyle(
                        color: AppColors.kBlack,
                        fontSize: 12.sp,
                      ),
                    )),
                    Spacer(),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
