import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/am_pm_dropdown_dart.dart';
import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/dropdown_month_cubit.dart';
import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/time_cubit.dart';
import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/month_dropdown_cubit.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/delivery/delivery_custom_widget.dart';
import 'package:car_pooling_passanger/View/utils/custom_widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';
import '../../utils/custom_widgets/custom_button.dart';
import '../my_static_properites.dart';
import 'delivery_screen_content.dart';
import 'landscape_view/delivery_landscape_view.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => AmPmDropDownCubit('PM'),
      child: BlocProvider(
        create: (context) => WeightDropDown('G'),
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
                  color: AppColors.kBlackSecondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: size.width > 600
            ?
            const DeliveryLanscapeContent()
            :
            const DeliveryContent()
            ,
          ),
        ),
      ),
    );
  }
}
