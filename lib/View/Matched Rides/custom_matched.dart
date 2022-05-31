import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Model/utils/appcolors.dart';
import '../../Model/utils/appicons.dart';

class CustomMatched{

 static Widget getCard(){
   return Container(
      height: 156.sp,
      width: 344.sp,
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            offset: Offset(0, 3.0),
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
                      AppIcons.account_person,
                      size: 60.sp,
                      color: AppColors.bluelight,
                    )),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'John Doe',
                      style: TextStyle(
                        color: AppColors.kblackSecondary,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(left: 30.sp),
                    child: Align(
                        alignment: Alignment.center, child: Text('4.5')),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(right: 10.sp),
                      child: Row(
                        children: [
                          Expanded(
                            child: Icon(
                              Icons.star,
                              color: Colors.black,
                              size: 20.sp,
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.star,
                              color: Colors.black,
                              size: 20.sp,
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.star,
                              color: Colors.black,
                              size: 20.sp,
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              AppIcons.star_half,
                              color: Colors.black,
                              size: 15.sp,
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              AppIcons.star_outlined,
                              color: Colors.black,
                              size: 15.sp,
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
                    flex:2,
                    child: Row(
                      children: [
                        Expanded(child: Align(
                            alignment:Alignment.bottomCenter,
                            child: Text('Location')),),
                        Expanded(
                          flex: 3,
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  margin: EdgeInsets.only(right: 10.sp),
                                  child: Text('RS. 200 '))),),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 20.sp),
                      child: Row(
                        children: [
                          Expanded(
                            flex:3,
                            child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Demo location , street demo ')),),
                          Expanded(child: Align(
                              alignment: Alignment.topCenter,
                              child: Text('Cost')),),
                        ],
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

}