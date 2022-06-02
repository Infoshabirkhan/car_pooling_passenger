import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/am_pm_dropdown_dart.dart';
import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/month_dropdown_cubit.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/delivery/delivery_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Controller/cubits/booking_cubit/booking_cubit.dart';
import '../../../Model/utils/appcolors.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MonthDropDown('Jan'),
      child: BlocProvider(
        create: (context) => AmPmDropDownCubit('AM'),
        child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                foregroundColor: Colors.black,
                elevation: 0,
                backgroundColor: Colors.white,
                title: Text(
                  'Booking',
                  style: TextStyle(
                    color: AppColors.kBlack,
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
              ),
              body: ScrollConfiguration(
                behavior: ScrollBehavior(),
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
                    CustomDeliveryWidget.getTextField(
                        hint: "Select a pick up location", icon: Icons.search),
                    SizedBox(
                      height: 20.h,
                    ),
                    const Text('Destination'),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomDeliveryWidget.getTextField(
                        hint: "Select your destination", icon: Icons.search),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Date and Time',
                      style: TextStyle(
                          fontSize: 15.sp, color: AppColors.kblackSecondary),
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
                                  color: AppColors.bluelight, width: 1.5.sp),
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
                                      color: AppColors.bluelight, width: 1.5.sp),
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
                                        color: AppColors.bluelight,
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
                                    color: AppColors.bluelight, width: 1.5.sp),
                                borderRadius: BorderRadius.circular(10.r)),
                            child:
                                Center(child: CustomDeliveryWidget.dropdownAm()),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 200.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.sp,right: 10.sp),
                      height: 51.h,
                      width: 296.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColors.kBlue,
                      ),
                      child: Center(
                        child: Text('Show Bookings',style: TextStyle(
                          color: AppColors.kWhite,
                          fontSize: 20.sp,
                        ),),
                      ),
                    ),
                  ],
                ),
              ),),
        ),
    );
  }
}
