import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/landscape_views/riders_landscape_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Model/utils/appcolors.dart';
import '../../../../Model/utils/appicons.dart';
import '../../../utils/custom_widgets/my_cancel_button.dart';
import '../../my_static_properites.dart';
import '../my_riders_cards.dart';


class BottomSheetLandscape extends StatelessWidget {
  final bool currentState;
  final VoidCallback cancelClick;
  final VoidCallback onTap;

  const BottomSheetLandscape(
      {Key? key,
        required this.cancelClick,
        required this.currentState,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        // Positioned(
        //     top: 20.h,
        //     right: 12.h,
        //     child: InkWell(
        //       onTap: cancelClick,
        //       child: Container(
        //         width: 98.sp,
        //         height: 47.sp,
        //         decoration: BoxDecoration(
        //           boxShadow: [
        //             BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 2)
        //           ],
        //           color: Colors.white,
        //         ),
        //         child: Center(
        //           child: Text(
        //             'Cancel',
        //             style: TextStyle(fontSize: 15.sp, color: AppColors.kRed),
        //           ),
        //         ),
        //       ),
        //     )),


        MyCancelButton(height: 80,onTap: cancelClick, textSize: 8,),


        AnimatedPositioned(
          left: 0.w,
          right: 0.w,
          // bottom: currentState == false ? -0.55.sh : -0.2.sh,
          // bottom: currentState == false ? -580.h : -400.h,
          bottom: currentState == false ? -480.h : -280.h,
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
                                : AppIcons.arrowDown,size: 7.sp,),
                          ),
                          Expanded(
                              child: Text(
                                'Swipe up for more',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 7.sp, color: AppColors.kGreyLightest),
                              )),
                        ],
                      ),
                    )),

                Expanded(
                  flex: 10,
                  child: ListView.builder(
                      physics: currentState == false
                          ? const NeverScrollableScrollPhysics()
                          : const ClampingScrollPhysics(),
                      padding: EdgeInsets.only(
                          left: 15.sp, right: 15.sp, top: 5.sp, bottom: 280.h),
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        if(size.width > 600){
                          return RidersLandscapeCard(
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

                        }else{
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

                        }
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
