import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/my_static_properites.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/riders_detail_views/rider_detail_landscape_loaded.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/riders_detail_views/rider_detail_loaded_list.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/riders_detail_views/rider_info_widget.dart';
import 'package:car_pooling_passanger/View/utils/custom_widgets/custom_button.dart';
import 'package:car_pooling_passanger/View/utils/custom_widgets/my_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Controller/cubits/rider_detail_view_cubits/book_ride_cubit.dart';
import 'my_request_dialog.dart';

class RiderDetailScreen extends StatelessWidget {
  const RiderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
              // fontSize: 20.sp,
              color: AppColors.kBlack,
              fontWeight: FontWeight.w700,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: size.width > 600 ?
          const RiderDetailLandscapeLoadedList()

              :

          RiderDetailLoadedList()


          ,
        ),
      ),
    );
  }
}
