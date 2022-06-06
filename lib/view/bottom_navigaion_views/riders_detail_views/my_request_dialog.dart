import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';
import '../../utils/custom_widgets/my_text_field.dart';

class MyRequestDialog extends StatelessWidget {
  final VoidCallback onConfirm;

  const MyRequestDialog({Key? key, required this.onConfirm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Dialog(
      child: SizedBox(
        height: width > 600 ? 250.h : 205.h,
        child: Column(
          children: [
            Expanded(
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Request Details',
                    style: TextStyle(
                        fontSize: width > 600 ? 8.sp : 15.sp,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.only(left: 35.w),
                          child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Seats',
                              )),
                        )),
                        Expanded(
                            flex: 2,
                            child: SizedBox(
                                width: 87.w,
                                child: const MyTextField(
                                  label: '1',
                                  keyboardType: TextInputType.number,
                                  textAlignment: TextAlign.center,
                                ))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Rs. 200',
                                  style: TextStyle(
                                      fontSize: width > 600 ? 7.sp : 15.sp,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ))),
                        Expanded(
                            child: SizedBox(
                                width: 87.w,
                                child: const Align(
                                    alignment: Alignment.topCenter,
                                    child: Text('Total')))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  const Spacer(),
                  Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(
                              child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontSize: width > 600 ? 8.sp : 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff808080)),
                            ),
                          )),
                          Expanded(
                              child: TextButton(
                            onPressed: onConfirm,
                            child: Text('Confirm',
                                style: TextStyle(
                                    fontSize: width > 600 ? 8.sp : 15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.kBlue)),
                          )),
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
