import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';

class BookRideWidget extends StatelessWidget {
  final String destination;
  final String rupees;
  final String location;
  final String dateTime;
  final String seats;

  const BookRideWidget(
      {Key? key,
      required this.dateTime,
      required this.destination,
      required this.location,
      required this.rupees,
      required this.seats})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(top: 20.sp),
      padding: EdgeInsets.only(left: 14.sp, right: 16.sp),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 3)
      ]),
      height: 156.h,
      width: 344.w,
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
                              "Destination: $destination",
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
                              "RS. $rupees",
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
                    location,
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
                      child: SizedBox(
                        width: 80.sp,
                        child: Row(
                          children: [
                            Expanded(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(
                                      AppIcons.seatBooked,
                                      color: AppColors.kBlueIcon,
                                    ))),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(
                                      AppIcons.seatBooked,
                                      color: AppColors.kBlueIcon,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      'Booked Seats: $seats',
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
                      dateTime,
                      style: TextStyle(
                        color: AppColors.kBlack,
                        fontSize: 12.sp,
                      ),
                    )),
                    const Spacer(),
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
