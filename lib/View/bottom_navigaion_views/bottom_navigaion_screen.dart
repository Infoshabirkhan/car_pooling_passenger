import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/settings_view/settings_screen.dart';
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

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationCubit(0),
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        floatingActionButton: BlocBuilder<BottomNavigationCubit, int>(
  builder: (context, state) {
    return FloatingActionButton(
          elevation: 0,
          onPressed: () {
            pageController.jumpToPage(2);
            context.read<BottomNavigationCubit>().getNextScreen(
                index: 1);
            
          },
          child: Icon(AppIcons.travel),
        );
  },
),
        bottomNavigationBar: Container(
          height: 88.sp,
          color: Colors.white,
          child: BlocBuilder<BottomNavigationCubit, int>(
            builder: (context, state) {
              return Row(
                children: [
                  Expanded(child: InkWell(

                      onTap: () {
                        pageController.jumpToPage(0);
                        context.read<BottomNavigationCubit>().getNextScreen(
                            index: 0);
                      },

                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Icon(AppIcons.home, color: state == 0 ? AppColors.kBlue : AppColors.kBlue.withOpacity(0.6),)),
                          Expanded(child: Text('Home',style: TextStyle(color: state == 0 ? AppColors.kBlue : AppColors.kBlue.withOpacity(0.6))))
                        ],
                      ))),
                  Expanded(child: Align(
                      alignment: Alignment.center, child: InkWell(

                      onTap: () {
                        pageController.jumpToPage(1);
                        context.read<BottomNavigationCubit>().getNextScreen(
                            index: 1);
                      },
                      child: Text('Travel', style: TextStyle(color: state == 0 ? AppColors.kBlue : AppColors.kBlue.withOpacity(0.6)),)))),
                  Expanded(child: InkWell(
                    onTap: () {
                      pageController.jumpToPage(2);
                      context.read<BottomNavigationCubit>().getNextScreen(
                          index: 2);
                    },
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Icon(AppIcons.settings,color: state == 2 ? AppColors.kBlue : AppColors.kBlue.withOpacity(0.6))),

                        Expanded(child: Text('Settings',style: TextStyle(color: state == 2 ? AppColors.kBlue : AppColors.kBlue.withOpacity(0.6)))),
                      ],
                    ),
                  ))
                ],
              );
            },
          ),
        ),


        body: PageView(
          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          children: const [
            HomeScreen(),
            TravelScreen(),
            SettingsScreen()
          ],
        ),
      ),
    );
  }
}
