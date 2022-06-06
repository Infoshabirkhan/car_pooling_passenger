import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Model/utils/appcolors.dart';
import '../../utils/custom_widgets/custom_button.dart';
import '../../utils/custom_widgets/my_text_field.dart';

class SearchRidesView extends StatelessWidget {
  final int currentState;
  final VoidCallback onTap;

  const SearchRidesView(
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
              right: 10.sp,
              top: 10.sp,
              left: 10.sp,
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 5)
                ]),
                padding: EdgeInsets.only(left: 15.sp, right: 15.sp, top: 25.sp),
                width: 352.w,
                height: 230.h,
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
                        // flex: 2,
                        child: Column(
                      children: [
                        Expanded(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Seats',
                                style: TextStyle(fontSize: 15.sp),
                              )),
                        ),
                        Expanded(
                          flex: 2,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 42.h,
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
                  ontap: onTap,
                  text: 'Find Rides',
                  color: AppColors.kBlue,
                )),
          ],
        ),
      ),
    );
  }
}
