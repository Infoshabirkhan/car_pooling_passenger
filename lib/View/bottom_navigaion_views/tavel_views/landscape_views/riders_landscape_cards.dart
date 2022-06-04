import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Model/utils/appcolors.dart';
import '../../../../Model/utils/appicons.dart';
import '../../../utils/custom_widgets/my_rating_stars.dart';

class RidersLandscapeCard extends StatelessWidget {
  final VoidCallback? onTap;

  const RidersLandscapeCard({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          top: 5.h,
          bottom: 20.h,
        ),
        height: 210.h,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 5)
        ]),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                        child: Icon(
                          AppIcons.accountPerson,
                          color: const Color(0xff57A3DE),
                          size: 20.sp,
                        )),
                    Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                          'John Doe',
                                          style: TextStyle(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Rating 4.5",
                                                  style: TextStyle(
                                                      color: AppColors.kGreyLight),
                                                )),
                                          ),
                                          const Expanded(
                                              child: MyRatingStars(
                                                itemSize: 8,
                                                initailRating: 4.5,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Location',
                                              style: TextStyle(fontSize: 7.sp),
                                            ))),
                                    Expanded(
                                        child: Text(
                                          'Demo location , street demo ',
                                          style: TextStyle(fontSize: 8.sp),
                                        )),
                                  ],
                                )),
                          ],
                        )),
                  ],
                )),
            Expanded(
                child: Row(
                  children: [
                    Spacer(),
                    Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                // flex: 2,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Icon(
                                          AppIcons.seatBooked,
                                          size: 7.sp,
                                          color: AppColors.kBlueIcon,
                                        ),
                                      ),
                                      Expanded(
                                        child: Icon(
                                          AppIcons.seatBooked,
                                          size: 7.sp,
                                          color: AppColors.kBlueIcon,
                                        ),
                                      ),
                                      Expanded(
                                        child: Icon(
                                          AppIcons.emptySeat,
                                          size: 7.sp,
                                          color: AppColors.kBlueIcon,
                                        ),
                                      ),
                                      Expanded(
                                        child: Icon(
                                          AppIcons.emptySeat,
                                          size: 7.sp,
                                          color: AppColors.kBlueIcon,
                                        ),
                                      ),
                                    ],
                                  )),
                              Expanded(
                                  child: Text(
                                    'Seats Available: 2',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                    ),
                                  ))
                            ],
                          ),
                        )),
                    const Spacer(),
                    Expanded(
                        child: Column(
                          children: [
                            Expanded(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'RS. 200',
                                      style: TextStyle(
                                          fontSize: 8.sp, fontWeight: FontWeight.bold),
                                    ))),
                            Expanded(
                                child: Text(
                                  'Cost per Seat',
                                  style: TextStyle(
                                    fontSize: 7.sp,
                                  ),
                                ))
                          ],
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
