import 'package:car_pooling_passanger/View/utils/custom_widgets/my_text_field.dart';
import 'package:car_pooling_passanger/model/utils/appicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Controller/cubits/booking_cubit/booking_cubit.dart';
import '../../../../Controller/cubits/delivery_view_cubits/month_dropdown_cubit.dart';
import '../../../../Model/utils/appcolors.dart';

import '../../utils/custom_widgets/custom_button.dart';
import '../delivery/delivery_custom_widget.dart';
import '../my_static_properites.dart';


class BookingViewContent extends StatelessWidget {
  const BookingViewContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: ListView(
            padding: EdgeInsets.only(left: 27.sp, right: 27.sp),
            children: [
              SizedBox(
                height: 22.h,
              ),
              Text(
                'Pickup',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),

              const MyTextField(label: 'Select a pick up location', prefixIcon: Icon(AppIcons.search),),

              SizedBox(
                height: 20.h,
              ),
              const Text('Destination'),
              SizedBox(
                height: 5.h,
              ),

              const MyTextField(label: 'Select your destination', prefixIcon: Icon(AppIcons.search),),


              SizedBox(
                height: 20.h,
              ),
              Text(
                'Date and Time',
                style: TextStyle(
                    fontSize: 15.sp, color: AppColors.kBlackSecondary),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 52.h,
                      width: 56.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                            color: AppColors.kBlueLight, width: 1.5.sp),
                      ),
                      child: CustomDeliveryWidget.dateTextField(space: 20),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: BlocBuilder<MonthDropDown, String>(
                      builder: (context, state) {
                        state = state;
                        return Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(left: 8.sp, right: 5.sp),
                          height: 46.h,
                          width: 56.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                                color: AppColors.kBlueLight, width: 1.5.sp),
                          ),
                          child: Center(
                              child: CustomDeliveryWidget.dropdownMon(
                                  context)),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        ).then((value) {
                          return context
                              .read<BookingTimeCubit>()
                              .getTime(state: value);
                        });
                      },
                      child: BlocBuilder<BookingTimeCubit, TimeOfDay>(
                        builder: (context, state) {
                          return Container(
                            margin:
                            EdgeInsets.only(right: 10.sp, left: 20.sp),
                            height: 52.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                  color: AppColors.kBlueLight,
                                  width: 1.5.sp),
                            ),
                            child: Center(
                                child: Text(
                                    state.format(context).toString())),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10.sp),
                      height: 42.h,
                      width: 56.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.kBlueLight, width: 1.5.sp),
                          borderRadius: BorderRadius.circular(10.r)),
                      child:
                      Center(child: CustomDeliveryWidget.dropdownAm()),
                    ),
                  ),
                ],
              ),


              SizedBox(
                height: 200.h,
              )

            ],
          ),
        ),


        Positioned(
          bottom: 20.h,
          left: 20.w,
          right: 20.w,
          child: CustomButton(
            ontap: (){

              /// It will navigate it to the Match rider screen
              /// Match rider is on index 7 in bottom navigation screen

              MyBottomNavigation.pageController.jumpToPage(7);


            },
            color: AppColors.kBlue,
            text: 'Show Bookings',

          ),
        )

      ],
    );
  }
}
