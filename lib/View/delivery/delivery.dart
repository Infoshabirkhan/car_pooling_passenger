import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/am_pm_dropdown_dart.dart';
import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/dropdown_month_cubit.dart';
import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/time_cubit.dart';
import 'package:car_pooling_passanger/View/delivery/delivery_custom_widget.dart';
import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/month_dropdown_cubit.dart';
import 'package:car_pooling_passanger/View/utils/custom_widgets/my_text_field.dart';
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
    String intilaValue = '';
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
                  height: 22.sp,
                ),
                Text(
                  'Pickup',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),

                const MyTextField(label: 'Select a pick up location', suffixIcon: Icon(AppIcons.search, color: Colors.black,), ),
                SizedBox(
                  height: 20.sp,
                ),
                const Text('Destination'),
                SizedBox(
                  height: 5.sp,
                ),
                const MyTextField(label: 'Select a pick up location', suffixIcon: Icon(AppIcons.search, color: Colors.black,), ),

                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  'Date and Time',
                  style:
                  TextStyle(fontSize: 15.sp, color: AppColors.kblackSecondary),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 52.sp,
                        width: 56.sp,
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
                            height: 46.sp,
                            width: 56.sp,
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
                              height: 52.sp,
                              width: 100.sp,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                    color: AppColors.bluelight, width: 1.5.sp),
                              ),
                              child: Center(child: Text(
                                  '${state.format(context).toString()}')),
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 10.sp),
                        height: 42.sp,
                        width: 56.sp,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.bluelight, width: 1.5.sp),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(child: CustomDeliveryWidget.dropdownAm()),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.sp,
                ),
                Text(
                  'Package weight',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: AppColors.kblackSecondary,
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 10.sp),
                        height: 52.sp,
                        width: 106.sp,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.bluelight, width: 1.5.sp),
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
                        height: 42.sp,
                        width: 100.sp,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.bluelight, width: 1.5.sp),
                            borderRadius: BorderRadius.circular(10.r)),
                        child:
                        Center(child: CustomDeliveryWidget.dropDownWi(context)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.sp,
                ),
                Text(
                  'Receiver Information',
                  style: TextStyle(
                    color: AppColors.kblackSecondary,
                    fontSize: 15.sp,
                  ),
                ),
                SizedBox(
                  height: 8.sp,
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
                  height: 8.sp,
                ),
                CustomDeliveryWidget.getTextField(hint: ''),
                SizedBox(
                  height: 15.sp,
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
                  height: 7.sp,
                ),
                CustomDeliveryWidget.getTextField(hint: ''),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.sp, right: 20.sp),
                  height: 51.sp,
                  width: 296.sp,
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
