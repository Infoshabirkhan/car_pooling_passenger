import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';
import '../../../Model/utils/appicons.dart';
import 'my_riders_cards.dart';
import '../my_static_properites.dart';

class MyBottomSheet extends StatelessWidget {
  final bool currentState;
  final VoidCallback cancelClick;
  final VoidCallback onTap;

  const MyBottomSheet(
      {Key? key,
      required this.cancelClick,
      required this.currentState,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 20.sp,
            right: 12.sp,
            child: InkWell(
              onTap: cancelClick,
              child: Container(
                width: 98.sp,
                height: 47.sp,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 2)
                  ],
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'Cancel',
                    style: TextStyle(fontSize: 15.sp, color: AppColors.kRed),
                  ),
                ),
              ),
            )),
        AnimatedPositioned(
          left: 0.sp,
          right: 0.sp,
          // bottom: currentState == false ? -0.55.sh : -0.2.sh,
          bottom: currentState == false ? -580.h : -400.h,
          duration: const Duration(milliseconds: 200),
          child: Container(
            // height: 0.8.sh,
            height: 800.h,
            // width: 1.sw,
            color: Colors.white,

            child: Column(
              children: [
                Expanded(
                    // flex: 0,

                    child: InkWell(
                  onTap: onTap,
                  child: Column(
                    children: [
                      Expanded(
                        child: Icon(currentState == false
                            ? AppIcons.arrowUp
                            : AppIcons.arrowDown),
                      ),
                      Expanded(
                          child: Text(
                        'Swipe up for more',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.sp, color: AppColors.kGreyLightest),
                      )),
                    ],
                  ),
                )),

                Expanded(
                  flex: 14,
                  child: ListView.builder(
                      physics: currentState == false
                          ? const NeverScrollableScrollPhysics()
                          : const ClampingScrollPhysics(),
                      padding: EdgeInsets.only(
                          left: 15.sp, right: 15.sp, top: 5.sp, bottom: 200.sp),
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return MyRidersCard(
                            onTap: currentState == false
                                ? null
                                : () {
                                    MyBottomNavigation.pageController
                                        .jumpToPage(3);
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    //
                                    //   return const RiderDetailScreen();
                                    // }));
                                  });
                      }),
                ),
                // Expanded(
                //   flex: 15,
                //
                //
                //   child: ListView(
                //
                //     physics: currentState == false ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
                //     padding: EdgeInsets.only(left: 15.sp, right: 15.sp, top: 5.sp),
                //     children: [
                //
                //        MyRidersCard(onTap: (){},),
                //      MyRidersCard(onTap: (){},),
                //        MyRidersCard(onTap: (){},),
                //        MyRidersCard(onTap: (){},),
                //
                //        MyRidersCard(onTap: (){},),
                //
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
