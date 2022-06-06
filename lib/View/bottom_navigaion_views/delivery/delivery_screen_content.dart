import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Controller/cubits/delivery_view_cubits/time_cubit.dart';
import '../../../../Model/utils/appcolors.dart';
import '../../../../Model/utils/appicons.dart';
import '../../utils/custom_widgets/custom_button.dart';
import '../../utils/custom_widgets/my_text_field.dart';
import '../my_static_properites.dart';
import 'delivery_custom_widget.dart';

class DeliveryContent extends StatelessWidget {
  const DeliveryContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: ListView(
        padding: EdgeInsets.only(left: 27.sp, right: 27.sp),
        children: [
          SizedBox(
            height: 20.h,
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
          SizedBox(
              height: 42.h,
              child: const MyTextField(
                label: 'Select a pick up location',
                suffixIcon: Icon(
                  AppIcons.search,
                  color: Colors.black,
                ),
              )),
          SizedBox(
            height: 18.h,
          ),
          const Text('Destination'),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
              height: 42.h,
              child: const MyTextField(
                label: 'Select a pick up location',
                suffixIcon: Icon(
                  AppIcons.search,
                  color: Colors.black,
                ),
              )),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Date and Time',
            style: TextStyle(fontSize: 15.sp, color: AppColors.kBlackSecondary),
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
                        Border.all(color: AppColors.kBlueLight, width: 1.5.sp),
                  ),
                  child: CustomDeliveryWidget.dateTextField(space: 20),
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
                            color: AppColors.kBlueLight, width: 1.5.sp),
                      ),
                      child: Center(
                          child: CustomDeliveryWidget.dropdownMon(context)),
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
                      return context.read<TimeCubit>().getTime(state: value);
                    });
                  },
                  child: BlocBuilder<TimeCubit, TimeOfDay>(
                    builder: (context, state) {
                      return Container(
                        margin: EdgeInsets.only(right: 10.sp, left: 20.sp),
                        height: 52.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                              color: AppColors.kBlueLight, width: 1.5.sp),
                        ),
                        child: Center(
                            child: Text(state.format(context).toString())),
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
              color: AppColors.kBlackSecondary,
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
                          color: AppColors.kBlueLight, width: 1.5.sp),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                      child: CustomDeliveryWidget.dateTextField(space: 30)),
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
                          color: AppColors.kBlueLight, width: 1.5.sp),
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
              color: AppColors.kBlackSecondary,
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
          SizedBox(height: 42.h, child: const MyTextField()),
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
          SizedBox(height: 42.h, child: const MyTextField()),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: CustomButton(
              ontap: () {
                /// It will navigate it to the Match rider Screen
                /// Match rider is on index 7 in bottom navigation

                MyBottomNavigation.pageController.jumpToPage(7);
              },
              color: AppColors.kBlue,
              text: 'Find Rides',
            ),
          ),
        ],
      ),
    );
  }
}
