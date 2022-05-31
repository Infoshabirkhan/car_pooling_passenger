import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:car_pooling_passanger/View/utils/custom_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RiderDetailScreen extends StatelessWidget {
  const RiderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Rider Details',
          style: TextStyle(
            fontFamily: 'SF Pro Text',
            fontSize: 20.sp,
            color: AppColors.KBlack,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: AppColors.kWhite,
      ),
      body: ScrollConfiguration(
        
        behavior: const ScrollBehavior(),
        child: ListView(
          // physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(left: 37.sp, top: 59.5.sp,),
          children: [
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(right: 37.sp),
                  child: Icon(
                    AppIcons.account_person,
                    size: 83.04.sp,
                    color: AppColors.bluelight,
                  ),
                )),
            SizedBox(
              height: 12.5.sp,
            ),
            Padding(
              padding: EdgeInsets.only(right: 37.sp),
              child: Text(
                textAlign: TextAlign.center,
                'John Doe',
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 15.sp,
                  color: AppColors.KBlack,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 232.92.sp,
                height: 36.64.sp,
                //     color: Colors.black87,
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            AppIcons.phone_call,
                            color: AppColors.kCallIcon,
                            size: 36.57.sp,
                          ),
                        )),
                    Expanded(
                        child: Text(
                          '4.5',
                          style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 12.sp,
                            color: AppColors.kGreyLight,
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                                child: Icon(
                              Icons.star,
                              size: 17.81.sp,
                            )),
                            Expanded(
                                child: Icon(
                              Icons.star,
                              size: 17.81.sp,
                            )),
                            Expanded(
                                child: Icon(
                              Icons.star,
                              size: 17.81.sp,
                            )),
                            Expanded(
                                child: Icon(
                              AppIcons.star_half,
                              size: 13.81.sp,
                            )),
                            Expanded(
                                child: Icon(
                              AppIcons.star_outlined,
                              size: 13.81.sp,
                            )),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 19.sp,
            ),
            Text(
              'Location',
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 12.sp,
                color: AppColors.kGreySecondary,
              ),
            ),
            Text(
              'Demo location , street demo ',
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 15.sp,
                color: AppColors.kblackSecondary,
              ),
            ),
            SizedBox(
              height: 12.sp,
            ),
            SizedBox(
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
                          'Phone No:',
                          style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 12.sp,
                            color: AppColors.kGreySecondary,
                          ),
                        )),
                        Expanded(
                            child: Text(
                          textAlign: TextAlign.center,
                          'Gender:',
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
                          '+92-8995323',
                          style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 15.sp,
                            color: AppColors.kblackSecondary,
                          ),
                        )),
                        Expanded(
                            child: Text(
                          textAlign: TextAlign.center,
                          'Male',
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
            ),


            SizedBox(
              height: 17.5.sp,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 5.sp,right: 48.5.sp),
              child: Divider(

                color: AppColors.kGreySecondary,
              ),
            ),
            SizedBox(
              height: 17.5.sp,
            ),
            SizedBox(
              width: 271.sp,
              height: 35.sp,
        //       color: Colors.green,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Model:',
                          style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 12.sp,
                            color: AppColors.kGreySecondary,
                          ),
                        )),
                        Expanded(
                            child: Text(
                          textAlign: TextAlign.center,
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
                            color: AppColors.kblackSecondary,
                          ),
                        )),
                        Expanded(
                            child: Text(
                          textAlign: TextAlign.center,
                          'DH-233R',
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
            ),
            SizedBox(
              height: 12.sp,
            ),
            SizedBox(
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
                          'Smoking:',
                          style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 12.sp,
                            color: AppColors.kGreySecondary,
                          ),
                        )),
                        Expanded(
                            child: Text(
                          textAlign: TextAlign.center,
                          'AC:',
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
                          'Allowed',
                          style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 15.sp,
                            color: AppColors.kblackSecondary,
                          ),
                        )),
                        Expanded(
                            child: Text(
                          textAlign: TextAlign.center,
                          'Yes',
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
            ),
            SizedBox(
              height: 23.sp,
            ),
            Padding(
              padding: EdgeInsets.only(right: 37.sp),
              child: Text(
                textAlign: TextAlign.center,
                'RS. 200',
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 30.sp,
                  color: AppColors.kCallIcon,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 37.sp),
              child: Text(
                textAlign: TextAlign.center,
                'Cost per Seat',
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 12.sp,
                  color: AppColors.kblackSecondary,
                ),
              ),
            ),
            SizedBox(
              height: 17.sp,
            ),
            CustomButton(
                text: 'Send Request', ontap: () {}, color: AppColors.kBlue),
          ],
        ),
      ),
    );
  }
}
