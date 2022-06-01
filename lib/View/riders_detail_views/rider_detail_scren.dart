import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/my_static_properites.dart';
import 'package:car_pooling_passanger/View/riders_detail_views/my_request_dialog.dart';
import 'package:car_pooling_passanger/View/riders_detail_views/rider_info_widget.dart';
import 'package:car_pooling_passanger/View/utils/custom_widgets/custom_button.dart';
import 'package:car_pooling_passanger/View/utils/custom_widgets/my_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Controller/cubits/rider_detail_view_cubits/book_ride_cubit.dart';

class RiderDetailScreen extends StatelessWidget {
  const RiderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookRideCubit(false),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Rider Details',
            style: TextStyle(
              fontFamily: 'SF Pro Text',
              fontSize: 20.sp,
              color: AppColors.kBlack,
              fontWeight: FontWeight.w700,
            ),
          ),
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
        ),
        body: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: ListView(
            // physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(
              left: 37.sp,
              top: 59.5.sp,
            ),
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
                    color: AppColors.kBlack,
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
                      const Expanded(
                        flex: 3,
                        child: MyRatingStars(
                          initailRating: 4.5,
                        ),
                      )
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
              const RiderInformation(
                  heading1: 'Phone No : ',
                  heading2: 'Gender',
                  headingDetail1: '+92-8995323',
                  headingDetail2: 'Male'),
              SizedBox(
                height: 17.5.sp,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.sp, right: 48.5.sp),
                child: Divider(
                  color: AppColors.kGreySecondary,
                ),
              ),
              SizedBox(
                height: 17.5.sp,
              ),
              const RiderInformation(
                  heading1: 'Model : ',
                  heading2: 'Plate No: ',
                  headingDetail1: 'Alto VXR',
                  headingDetail2: 'DH-233R'),
              SizedBox(
                height: 12.sp,
              ),
              const RiderInformation(
                  heading1: 'Smoking : ',
                  heading2: 'AC: ',
                  headingDetail1: 'Allowed',
                  headingDetail2: 'Yes'),
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
              BlocBuilder<BookRideCubit, bool>(
                builder: (context, state) {

                  var rides = context.read<BookRideCubit>();

                  return CustomButton(
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
                  }, color: state == false ? AppColors.kBlue : AppColors.kRed);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
