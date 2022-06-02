import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';
import '../../../Model/utils/appicons.dart';


class RequestAcceptedCard extends StatelessWidget {
  final VoidCallback? onTap;

  const RequestAcceptedCard({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(


        margin: EdgeInsets.only(top: 5.sp,),

        height: 156.h,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 5)
            ]

        ),

        // child: Column(
        //   children: [
        //     Expanded(
        //         flex: 2,
        //         child: Container(color: Colors.red,)),
        //     Expanded(
        //         flex: 3,
        //         child: Container(color: Colors.green,)),
        //   ],
        // ),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(child: Icon(
                      AppIcons.accountPerson, color: const Color(0xff57A3DE),
                      size: 52.sp,)),

                    Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: Row(
                              children: [
                                Expanded(child: Text('John Doe',
                                  style: TextStyle(fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),)),

                                Expanded(child: Padding(
                                  padding:  EdgeInsets.only(top: 23.sp),
                                  child: Column(
                                    children: [
                                      Expanded(child: Align(
                                          alignment: Alignment.center,
                                          child: Icon(AppIcons.phoneCall,color: AppColors.kGreen,size: 32.sp,)),),

                                       Expanded(
                                          child: Text(
                                            'Make Call',
                                            style: TextStyle(
                                              fontFamily: 'SF Pro Text',
                                              fontSize: 12.sp,
                                              color:  AppColors.kGreen,
                                            ),
                                          )
                                      )

                                    ],
                                  ),
                                ),),

                              ],
                            )),

                          ],
                        )),

                  ],
                )),

            Expanded(child: Padding(
              padding:  EdgeInsets.only(left: 36.sp),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Expanded(child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Location',
                        style: TextStyle(fontSize: 12.sp,color: AppColors.kGreySecondary),))),
                  Expanded(child: Text(
                    'Demo location , street demo ',
                    style: TextStyle(fontSize: 15.sp),)),
                ],
              ),
            )),

         Expanded(
           child: Padding(
             padding:  EdgeInsets.only(left:36.sp),
             child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                            'Distance',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 12.sp,
                              color: AppColors.kGreySecondary,
                            ),
                          )),
                      Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            'Time to Reach',
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
                            '2.6 km',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 15.sp,
                              color: AppColors.kBlackSecondary,
                            ),
                          )),
                      Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            '15 min',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 15.sp,
                              color: AppColors.kBlackSecondary,
                            ),
                          )),
                    ],
                  ),
                ),
              ],
        ),
           ),
         ),

]
      ),
    ),
    );
  }
}
