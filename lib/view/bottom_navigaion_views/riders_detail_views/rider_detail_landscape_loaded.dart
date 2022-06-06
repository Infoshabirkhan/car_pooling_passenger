import 'package:car_pooling_passanger/Model/utils/remove_glow.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/riders_detail_views/rider_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Controller/cubits/rider_detail_view_cubits/book_ride_cubit.dart';
import '../../../Model/utils/appcolors.dart';
import '../../../Model/utils/appicons.dart';
import '../../utils/custom_widgets/custom_button.dart';
import '../../utils/custom_widgets/my_rating_stars.dart';
import '../my_static_properites.dart';
import 'my_request_dialog.dart';


class RiderDetailLandscapeLoadedList extends StatelessWidget {
  const RiderDetailLandscapeLoadedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Row(
      children: [
        Expanded(child: ScrollConfiguration(
          behavior: RemoveGlow(),

          child: ListView(
            children: [

            Align(
                    alignment: Alignment.center,
                    child: Icon(
                      AppIcons.accountPerson,
                      size: 20.sp,
                      color: AppColors.kBlueLight,
                    )),
                SizedBox(
                  height: 12.5.h,
                ),

          Text(

            textAlign: TextAlign.center,
            'John Doe',
            style: TextStyle(
              fontFamily: 'SF Pro Text',
              fontSize: 8.sp,
              color: AppColors.kBlack,
              fontWeight: FontWeight.w700,
            ),),



                Center(
                  child: SizedBox(
                    width: 232.92.w,
                    height: 36.64.h,
                    //     color: Colors.black87,
                    child: Row(
                      children: [
                        Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Icon(
                                AppIcons.phoneCall,
                                color: AppColors.kGreen,
                                size: 10.sp,
                              ),
                            )),
                        Expanded(
                            child: Text(

                              '4.5',
                              style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 5.sp,
                                color: AppColors.kGreyLight,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const Expanded(
                          flex: 3,
                          child: MyRatingStars(
                            itemSize: 6,
                            initailRating: 4.5,
                          ),
                        )


            ],
          ),
                  )),

        ],
          ),



        )),
        Expanded(
            flex: 2,
            child: ScrollConfiguration(

              behavior: RemoveGlow(),


            child: ListView(
              children: [


              Text(
                    'Location',
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 6.sp,
                      color: AppColors.kGreySecondary,
                    ),
                  ),
                  Text(
                    'Demo location , street demo ',
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 8.sp,
                      color: AppColors.kBlackSecondary,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const RiderInformation(
                    textSize: 5,
                      heading1: 'Phone No : ',
                      heading2: 'Gender',
                      headingDetail1: '+92-8995323',
                      headingDetail2: 'Male'),
                  SizedBox(
                    height: 17.5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.sp, right: 48.5.sp),
                    child: Divider(
                      color: AppColors.kGreySecondary,
                    ),
                  ),
                  SizedBox(
                    height: 17.5.h,
                  ),
                  const RiderInformation(
                    textSize: 5,
                      heading1: 'Model : ',
                      heading2: 'Plate No: ',
                      headingDetail1: 'Alto VXR',
                      headingDetail2: 'DH-233R'),
                  SizedBox(
                    height: 12.h,
                  ),
                  const RiderInformation(
                    textSize: 5,
                      heading1: 'Smoking : ',
                      heading2: 'AC: ',
                      headingDetail1: 'Allowed',
                      headingDetail2: 'Yes'),
                  SizedBox(
                    height: 23.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 37.sp),
                    child: Text(
                      textAlign: TextAlign.center,
                      'RS. 200',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 10.sp,
                        color: AppColors.kGreen,
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
                        fontSize: 6.sp,
                        color: AppColors.kBlackSecondary,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  BlocBuilder<BookRideCubit, bool>(
                    builder: (context, state) {

                      var rides = context.read<BookRideCubit>();

                      return Center(
                        child: CustomButton(
                          textSize: 8,
                          height: 80,
                            text: state == false ? 'Send Request' : 'Cancel Request',

                            ontap: state == true ? (){

                              MyBottomNavigation.pageController.jumpToPage(4);

                            }: () {
                              showDialog(context: (context), builder: ( context) {
                                return MyRequestDialog(onConfirm: () {

                                  Navigator.of(context).pop();


                                  rides.manageBooking(isCancel: !state);
                                  // context.read<BookRideCubit>().manageBooking(isCancel: !state);

                                });
                              });
                            }, color: state == false ? AppColors.kBlue : AppColors.kRed),
                      );
                    },
                  ),




              ],
            ),

            )),
        const Spacer(),
      ],
    );
    // return ListView(
    //   // physics: NeverScrollableScrollPhysics(),
    //   padding: EdgeInsets.only(
    //     left: 37.sp,
    //     top: 59.5.sp,
    //
    //   ),
    //   children: [
    //     Align(
    //         alignment: Alignment.center,
    //         child: Padding(
    //           padding: EdgeInsets.only(right: 37.sp),
    //           child: Icon(
    //             AppIcons.accountPerson,
    //             size: 83.04.sp,
    //             color: AppColors.kBlueLight,
    //           ),
    //         )),
    //     SizedBox(
    //       height: 12.5.h,
    //     ),
    //     Padding(
    //       padding: EdgeInsets.only(right: 37.sp),
    //       child: Text(
    //         textAlign: TextAlign.center,
    //         'John Doe',
    //         style: TextStyle(
    //           fontFamily: 'SF Pro Text',
    //           fontSize: 15.sp,
    //           color: AppColors.kBlack,
    //           fontWeight: FontWeight.w700,
    //         ),
    //       ),
    //     ),
    //     Center(
    //       child: SizedBox(
    //         width: 232.92.w,
    //         height: 36.64.h,
    //         //     color: Colors.black87,
    //         child: Row(
    //           children: [
    //             Expanded(
    //                 flex: 3,
    //                 child: Align(
    //                   alignment: Alignment.centerLeft,
    //                   child: Icon(
    //                     AppIcons.phoneCall,
    //                     color: AppColors.kGreen,
    //                     size: 36.57.sp,
    //                   ),
    //                 )),
    //             Expanded(
    //                 child: Text(
    //                   '4.5',
    //                   style: TextStyle(
    //                     fontFamily: 'SF Pro Text',
    //                     fontSize: 12.sp,
    //                     color: AppColors.kGreyLight,
    //                   ),
    //                 )),
    //             const Expanded(
    //               flex: 3,
    //               child: MyRatingStars(
    //                 initailRating: 4.5,
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //     SizedBox(
    //       height: 19.h,
    //     ),
    //     Text(
    //       'Location',
    //       style: TextStyle(
    //         fontFamily: 'SF Pro Text',
    //         fontSize: 12.sp,
    //         color: AppColors.kGreySecondary,
    //       ),
    //     ),
    //     Text(
    //       'Demo location , street demo ',
    //       style: TextStyle(
    //         fontFamily: 'SF Pro Text',
    //         fontSize: 15.sp,
    //         color: AppColors.kBlackSecondary,
    //       ),
    //     ),
    //     SizedBox(
    //       height: 12.h,
    //     ),
    //     const RiderInformation(
    //         heading1: 'Phone No : ',
    //         heading2: 'Gender',
    //         headingDetail1: '+92-8995323',
    //         headingDetail2: 'Male'),
    //     SizedBox(
    //       height: 17.5.h,
    //     ),
    //     Padding(
    //       padding: EdgeInsets.only(left: 5.sp, right: 48.5.sp),
    //       child: Divider(
    //         color: AppColors.kGreySecondary,
    //       ),
    //     ),
    //     SizedBox(
    //       height: 17.5.h,
    //     ),
    //     const RiderInformation(
    //         heading1: 'Model : ',
    //         heading2: 'Plate No: ',
    //         headingDetail1: 'Alto VXR',
    //         headingDetail2: 'DH-233R'),
    //     SizedBox(
    //       height: 12.h,
    //     ),
    //     const RiderInformation(
    //         heading1: 'Smoking : ',
    //         heading2: 'AC: ',
    //         headingDetail1: 'Allowed',
    //         headingDetail2: 'Yes'),
    //     SizedBox(
    //       height: 23.h,
    //     ),
    //     Padding(
    //       padding: EdgeInsets.only(right: 37.sp),
    //       child: Text(
    //         textAlign: TextAlign.center,
    //         'RS. 200',
    //         style: TextStyle(
    //           fontFamily: 'SF Pro Text',
    //           fontSize: 30.sp,
    //           color: AppColors.kGreen,
    //           fontWeight: FontWeight.w700,
    //         ),
    //       ),
    //     ),
    //     Padding(
    //       padding: EdgeInsets.only(right: 37.sp),
    //       child: Text(
    //         textAlign: TextAlign.center,
    //         'Cost per Seat',
    //         style: TextStyle(
    //           fontFamily: 'SF Pro Text',
    //           fontSize: 12.sp,
    //           color: AppColors.kBlackSecondary,
    //         ),
    //       ),
    //     ),
    //     SizedBox(
    //       height: 17.h,
    //     ),
    //     BlocBuilder<BookRideCubit, bool>(
    //       builder: (context, state) {
    //
    //         var rides = context.read<BookRideCubit>();
    //
    //         return Padding(
    //           padding:  EdgeInsets.only(right: 39.sp),
    //           child: CustomButton(
    //               text: state == false ? 'Send Request' : 'Cancel Request',
    //
    //               ontap: state == true ? (){
    //
    //                 MyBottomNavigation.pageController.jumpToPage(4);
    //
    //               }: () {
    //                 showDialog(context: (context), builder: ( context) {
    //                   return MyRequestDialog(onConfirm: () {
    //
    //                     Navigator.of(context).pop();
    //
    //
    //                     rides.manageBooking(isCancel: !state);
    //                     // context.read<BookRideCubit>().manageBooking(isCancel: !state);
    //
    //                   });
    //                 });
    //               }, color: state == false ? AppColors.kBlue : AppColors.kRed),
    //         );
    //       },
    //     ),
    //   ],
    // );
  }
}
