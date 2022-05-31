import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';
import '../../../Model/utils/appicons.dart';
import 'my_riders_cards.dart';


class MyBottomSheet extends StatelessWidget {
  final bool currentState;
  final VoidCallback onTap;
  const MyBottomSheet({Key? key, required this.currentState, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      bottom: currentState == false ? -0.72.sh : -0.2.sh,
      duration: const Duration(milliseconds: 200),
      child: Container(
        height: 1.sh,
        width: 1.sw,
        color: Colors.white,

        child: Column(
          children: [

            Expanded(
                // flex: 0,

                child: Container(
                  child: Column(
              children: [

                  Expanded(
                    child: InkWell(

                        onTap: onTap,
                        child: Icon(currentState == false ? AppIcons.arrow_up : AppIcons.arrow_down)),
                  ),


                  Expanded(child: Text('Swipe up for more', textAlign: TextAlign.center,style: TextStyle(fontSize: 12.sp, color: AppColors.kGreyLightest),)),






              ],
            ),
                )),
            Expanded(
              flex: 15,

              child: ListView(
                physics: currentState == false ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
                padding: EdgeInsets.only(left: 15.sp, right: 15.sp, top: 5.sp),
                children: [

                  const MyRidersCard(),
                  const MyRidersCard(),
                  const MyRidersCard(),
                  const MyRidersCard(),

                  const MyRidersCard(),

                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
