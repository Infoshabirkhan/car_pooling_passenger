import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Model/utils/appcolors.dart';
import '../../../utils/custom_widgets/custom_button.dart';
import '../../../utils/custom_widgets/my_text_field.dart';

class SearchRideLandscapeView extends StatelessWidget {
  final int currentState;
  final VoidCallback onTap;

  const SearchRideLandscapeView(
      {Key? key, required this.currentState, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: currentState == 1 ? true : false,
      child: SizedBox(
        height: 1.sh,
        width: 1.sw,
        // color: Colors.blue,
        child: Stack(
          children: [
            Positioned(
              right: 10.w,
              top: 10.h,
              left: 10.w,
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 5)
                ]),
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 5.h),
                width: 352.w,
                height: 300.h,
                child: Column(
                  children: [
                    const Expanded(
                      child: MyTextField(
                        label: 'Select a pick up location',
                        suffixIcon: Icon(
                          AppIcons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: MyTextField(
                        label: 'Select your destination',
                        suffixIcon: Icon(
                          AppIcons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Seats',
                                    style: TextStyle(fontSize: 7.sp),
                                  )),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  // height: 42.h,
                                  width: 87.w,
                                  child: const MyTextField(
                                    textAlignment: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    label: '1',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 27.h,
                right: 40.w,
                left: 40.w,
                child: CustomButton(
                  height: 80,
                  textSize: 8,
                  onTap: onTap,
                  text: 'Find Rides',
                  color: AppColors.kBlue,
                )),
          ],
        ),
      ),
    );
  }
}
