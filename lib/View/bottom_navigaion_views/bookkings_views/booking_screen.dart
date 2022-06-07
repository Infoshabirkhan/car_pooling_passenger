import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/am_pm_dropdown_dart.dart';
import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/month_dropdown_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Model/utils/appcolors.dart';
import 'booking_view_content.dart';
import 'landscape_view/booking_view_landscape.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocProvider(
        create: (context) => MonthDropDown('Jan'),
        child: BlocProvider(
            create: (context) => AmPmDropDownCubit('AM'),
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                title: Text(
                  'Booking',
                  style: TextStyle(
                    color: AppColors.kBlack,
                    // fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
              ),
              body: size.width > 600
                  ? const BookingViewLanscape()
                  : const BookingViewContent(),
            )));
  }
}
