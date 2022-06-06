import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/am_pm_dropdown_dart.dart';
import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/month_dropdown_cubit.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/delivery/delivery_custom_widget.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/my_static_properites.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Controller/cubits/booking_cubit/booking_cubit.dart';
import '../../../Model/utils/appcolors.dart';
import '../../utils/custom_widgets/custom_button.dart';
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
                  ? BookingViewLanscape()
                  : BookingViewContent(),
            )));
  }
}
