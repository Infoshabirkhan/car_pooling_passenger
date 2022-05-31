import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';
import '../../../Model/utils/appicons.dart';


class MyRidersCard extends StatelessWidget {
  const MyRidersCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(top: 5.sp, bottom: 20.sp),

      height: 156.sp,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 5)
          ]

      ),
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(child: Icon(AppIcons.account_person, color: Color(0xff57A3DE), size: 40.sp,)),

                  Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Row(
                            children: [
                              Expanded(child: Text('John Doe', style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),)),

                              Expanded(child: Column(
                                children: [
                                  Expanded(child: Align(
                                      alignment: Alignment.center,
                                      child: Text("Rating 4.5", style: TextStyle(color: AppColors.kGreyLight),)),),

                                  Expanded(
                                      child: RatingBar.builder(
                                        initialRating: 4.5,
                                        itemSize: 16.sp,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Colors.black,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      )
                                  )

                                ],
                              ),),

                            ],
                          )),
                          Expanded(child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [

                              Expanded(child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Location', style: TextStyle(fontSize: 12.sp),))),
                              Expanded(child: Text('Demo location , street demo ', style: TextStyle(fontSize: 15.sp),)),
                            ],
                          )),

                        ],
                      )),

                ],
              )),
          Expanded(child: Row(
            children: [
              Expanded(

                  child: Container(
                    margin: EdgeInsets.only(left: 30.sp),


                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Row(

                              children: [
                                Expanded(child: Icon(AppIcons.seat_booked, size: 15.sp,color: AppColors.kBlueIcon,),),
                                Expanded(child: Icon(AppIcons.seat_booked, size: 15.sp,color: AppColors.kBlueIcon,),),
                                Expanded(child: Icon(AppIcons.empty_seat, size: 15.sp,color: AppColors.kBlueIcon,),),
                                Expanded(child: Icon(AppIcons.empty_seat, size: 15.sp,color: AppColors.kBlueIcon,),),
                              ],
                            )),
                        Expanded(child: Text('Seats Available: 2',style: TextStyle(fontSize: 12.sp, color: Colors.white),))
                      ],
                    ),
                  )),

              Spacer(),
              Expanded(child: Column(
                children: [

                  Expanded(child: Align(
                      alignment: Alignment.center,
                      child: Text('RS. 200', style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),))),
                  Expanded(child: Text('Cost per Seat', style: TextStyle(fontSize: 12.sp,),))
                ],
              )),
            ],
          )),
        ],
      ),

    );
  }
}
