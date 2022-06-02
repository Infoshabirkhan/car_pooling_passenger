import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/Matched%20Rides/matched_rides.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/bookkings_views/booking_view.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/delivery/delivery.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/rate_rider_screen/rate_rider_screen.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/request_accepted_view/request_accepted_screen.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/riders_detail_views/rider_detail_scren.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/settings_view/settings_screen.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/my_static_properites.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/travel_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Controller/cubits/bottom_navigaiton_cubit/bottom_navigation_cubit.dart';
import 'home_screen_views/home_screen.dart';


class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {


  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;

    return BlocProvider(
      create: (context) => BottomNavigationCubit(0),
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        floatingActionButton: Visibility(
          visible: keyboardIsOpened ? false : true,
          child: BlocBuilder<BottomNavigationCubit, int>(
  builder: (context, state) {
    return FloatingActionButton(

      backgroundColor: Colors.white,
          //  elevation: 0,
            onPressed: () {
              MyBottomNavigation.pageController.jumpToPage(1);
              context.read<BottomNavigationCubit>().getNextScreen(
                  index: 1);

            },
            child: Icon(AppIcons.travel, color: state == 1 ? AppColors.kBlue : AppColors.kBlue.withOpacity(0.4),),
          );
  },
),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,

            boxShadow: [
              BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 2)
            ]

          ),
          height: 88.sp,
          child: BlocBuilder<BottomNavigationCubit, int>(
            builder: (context, state) {
              return Row(
                children: [
                  Expanded(child: InkWell(

                      onTap: () {
                        MyBottomNavigation.pageController.jumpToPage(0);
                        context.read<BottomNavigationCubit>().getNextScreen(
                            index: 0);
                      },

                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Icon(AppIcons.home, color: state == 0 ? AppColors.kBlue : AppColors.kBlue.withOpacity(0.4),)),
                          Expanded(child: Text('Home',style: TextStyle(color: state == 0 ? AppColors.kBlue : AppColors.kBlue.withOpacity(0.4))))
                        ],
                      ))),
                  Expanded(child: Align(
                      alignment: Alignment.center, child: InkWell(

                      onTap: () {
                        MyBottomNavigation.pageController.jumpToPage(1);
                        context.read<BottomNavigationCubit>().getNextScreen(
                            index: 1);
                      },
                      child: Column(
                        children: [
                          const Spacer(flex: 2,),

                          Expanded(child: Text('Travel', style: TextStyle(color: state == 1 ? AppColors.kBlue : AppColors.kBlue.withOpacity(0.4)),)),
                        ],
                      )))),
                  Expanded(child: InkWell(
                    onTap: () {
                      MyBottomNavigation.pageController.jumpToPage(2);
                      context.read<BottomNavigationCubit>().getNextScreen(
                          index: 2);
                    },
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Icon(AppIcons.settings,color: state == 2 ? AppColors.kBlue : AppColors.kBlue.withOpacity(0.4))),

                        Expanded(child: Text('Settings',style: TextStyle(color: state == 2 ? AppColors.kBlue : AppColors.kBlue.withOpacity(0.4)))),
                      ],
                    ),
                  ))
                ],
              );
            },
          ),
        ),


        body: PageView(
          controller: MyBottomNavigation.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [


            HomeScreen(),              // index 0
            TravelScreen(),            // index 1
            SettingsScreen(),          // index 2
            RiderDetailScreen(),       // index 3
            RequestAcceptedScreen(),   // index 4
            RateRiderScreen(),         // index 5
            DeliveryScreen(),          // index 6
            MatchedRides(),            // index 7
            BookingScreen(),           // index 8
          ],
        ),
      ),
    );
  }
}
