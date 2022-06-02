import 'package:car_pooling_passanger/View/utils/custom_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';
import '../../../Model/utils/appicons.dart';


class PickedUpCard extends StatelessWidget {

  final VoidCallback onTap;
  // final VoidCallback onCancel;
  const PickedUpCard({Key? key, required this.onTap, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 1.sh,
      child: Stack(
        children: [


          // MyCancelButton(onTap: onTap),
          Positioned(
            bottom: 27.sp,
            left: 10.sp,
            right: 10.sp,
            child: InkWell(
                onTap: onTap,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 5)
                    ]

                  ),
                  width: 200.w,
                    height: 274.h,
                  child: Column(
                    children: [

                      Expanded(
                          // flex: 2,
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
                                                  flex:3,
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

                      Expanded(child: Row(
                        children: [
                          Expanded(child: Row(
                            children: [

                              Expanded(child: Column(
                                children: [
                                  Expanded(child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text('Car model:', style: TextStyle(color: AppColors.kGreySecondary, fontSize: 12.sp),)),),
                                  Expanded(child: Text('Alto VXR', style: TextStyle(fontSize: 15.sp),),)


                                ],
                              )),



                              Expanded(child: Column(
                                children: [
                                  Expanded(child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text('Car model', style: TextStyle(color: AppColors.kGreySecondary, fontSize: 12.sp),)),),
                                  Expanded(child: Text('DH-233R', style: TextStyle(fontSize: 15.sp),),)
                                ],
                              ))

                            ],
                          )),


                          const Spacer(),
                        ],
                      )),
                      Expanded(child: Column(

                        children: [
                          Expanded(child: Text('Did you got picked up?', style: TextStyle(fontSize: 15.sp),),),

                          Expanded(child: Container(
                            margin: EdgeInsets.only(left: 20.sp),
                            child: Row(
                              children: [
                                const Spacer(),
                                Expanded(child: Align(

                                    alignment: Alignment.centerRight,
                                    child: CustomButton(text: 'No', color: AppColors.kBlue, ontap: () { },))),

                              const Spacer(),
                                Expanded(child: Align(
                                    alignment: Alignment.center,

                                    child: CustomButton(text: 'Yes', color: AppColors.kBlue, ontap: () { },)))


                               , const Spacer(),
                              ],
                            ),
                          ))


                        ],
                      )),
                    SizedBox(
                      height: 10.h,
                    )
                    ],
                  ),
                )),

          ),
        ],
      ),
    );
  }
}
