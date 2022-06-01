import 'package:car_pooling_passanger/View/delivery/cubits/am_pm_dropdown_dart.dart';
import 'package:car_pooling_passanger/View/delivery/cubits/dropdown_month_cubit.dart';
import 'package:car_pooling_passanger/View/delivery/cubits/time_cubit.dart';
import 'package:car_pooling_passanger/View/delivery/delivery_custom_widget.dart';
import 'package:car_pooling_passanger/View/delivery/cubits/month_dropdown_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Model/utils/appcolors.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AmPmDropDownCubit('PM'),
      child: BlocProvider(
        create: (context) => WhightDropDown('G'),
        child: BlocProvider(
          create: (context) => MonthDropDown('Jan'),
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              title: Text(
                'Delivery',
                style: TextStyle(
                  color: AppColors.kblackSecondary,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: ListView(
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
                  style:
                  TextStyle(fontSize: 15.sp, color: AppColors.kblackSecondary),
                ),
                SizedBox(
                  height: 10.h,
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
                          border:
                          Border.all(color: AppColors.bluelight, width: 1.5.sp),
                        ),
                        child: CustomDeliveryWidget.DateTextField(space: 20),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: BlocBuilder<TimeCubit, TimeOfDay>(
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
                            initialTime: TimeOfDay.now(),)
                          .then((value) {
                            return context
                                .read<TimeCubit>()
                                .getTime(state: value);
                          });
                        },
                        child: BlocBuilder<TimeCubit, TimeOfDay>(
                          builder: (context, state) {
                            return Container(
                              margin: EdgeInsets.only(
                                  right: 10.sp, left: 20.sp),
                              height: 52.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                    color: AppColors.bluelight, width: 1.5.w),
                              ),
                              child: Center(child: Text(
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
                                color: AppColors.bluelight, width: 1.5.w),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(child: CustomDeliveryWidget.dropdownAm()),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  'Package weight',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: AppColors.kblackSecondary,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 10.sp),
                        height: 52.h,
                        width: 106.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.bluelight, width: 1.5.w),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                            child: CustomDeliveryWidget.DateTextField(
                                space: 30)),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(right: 156.sp),
                        height: 42.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.bluelight, width: 1.5.w),
                            borderRadius: BorderRadius.circular(10.r)),
                        child:
                        Center(child: CustomDeliveryWidget.dropDownWi(context)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  'Receiver Information',
                  style: TextStyle(
                    color: AppColors.kblackSecondary,
                    fontSize: 15.sp,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Name',
                    children: [
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: AppColors.kRed,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomDeliveryWidget.getTextField(hint: ''),
                SizedBox(
                  height: 15.h,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Phone No',
                    children: [
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: AppColors.kRed,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                CustomDeliveryWidget.getTextField(hint: ''),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.sp, right: 20.sp),
                  height: 51.h,
                  width: 296.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.kBlue,
                  ),
                  child: Center(
                      child: Text(
                        'Find Rides',
                        style: TextStyle(
                            color: AppColors.kWhite, fontSize: 20.sp),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
