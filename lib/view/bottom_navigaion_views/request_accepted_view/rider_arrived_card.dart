import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';
import '../../../Model/utils/appicons.dart';


class RiderArrivedCard extends StatelessWidget {
  final VoidCallback onTap;
  const RiderArrivedCard({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 15.w,
      right: 15.w,
      bottom: 38.h,
      child: InkWell(
        onTap: onTap,
        child: Container(
          color: AppColors.kWhite,
          width: 200.sp,
          height: 200.sp,

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
                                       Expanded(
                                         flex: 2,
                                         child: Align(
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
                                 'Car model:',
                                 style: TextStyle(
                                   fontFamily: 'SF Pro Text',
                                   fontSize: 12.sp,
                                   color: AppColors.kGreySecondary,
                                 ),
                               )),
                           Expanded(
                             flex: 2,
                               child: Text(
                                 textAlign: TextAlign.left,
                                 'Plate No:',
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
                                 'Alto VXR',
                                 style: TextStyle(
                                   fontFamily: 'SF Pro Text',
                                   fontSize: 15.sp,
                                   color: AppColors.kBlackSecondary,
                                 ),
                               )),
                           Expanded(
                             flex: 2,
                               child: Text(
                                 textAlign: TextAlign.left,
                                 'DH-233R',
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
             Expanded(
                 flex: 2,
                 child: Row(

                   children: [
                     Expanded(
                         flex: 2,
                         child: Container(
                       // color: Colors.red,
                         alignment: Alignment.centerRight,
                         child: Icon(AppIcons.car,color: AppColors.kBlue,))),
                     Expanded(
                        flex: 5,
                         child: Container(
                           margin: EdgeInsets.only(left: 15.sp),
                       alignment: Alignment.centerLeft,
                       child: Text(
                         'Your Rider has Arrived',
                         style: TextStyle(
                           fontFamily: 'SF Pro Text',
                           fontSize: 15.sp,
                           color: AppColors.kBlack,
                         ),
                       ),
                     ))
                   ],
                 ))

           ],
          ),
        ),
      ),
    );
  }
}
