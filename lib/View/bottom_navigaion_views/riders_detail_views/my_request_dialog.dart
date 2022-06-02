import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';
import '../../utils/custom_widgets/my_text_field.dart';



class MyRequestDialog extends StatelessWidget {
  final VoidCallback onConfirm;
  const MyRequestDialog({Key? key, required this.onConfirm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(


      child: SizedBox(
        height: 205.h,
        child: Column(
          children: [

            Expanded(child: Align(
                alignment: Alignment.center,
                child: Text('Request Details', style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),)),),
            Expanded(child: Row(
              children: [
                Expanded(child: Column(
                  children: [
                     Expanded(child: Container(
                       padding: EdgeInsets.only(left: 35.w),
                      child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Seats',)),
                    )),
                    Expanded(
                        flex: 2,
                        child: SizedBox(
                        width: 87.w,
                        child: const MyTextField(label: '1',keyboardType: TextInputType.number,textAlignment: TextAlign.center,))),
                  ],
                ),),


                Expanded(child: Column(
                  children: [
                    Expanded(child: Align(

                        alignment: Alignment.bottomCenter,
                        child: Text('Rs. 200', style: TextStyle(fontSize: 15.sp, color: Colors.green, fontWeight: FontWeight.bold),))),
                    Expanded(child: SizedBox(
                        width: 87.w,
                        child: const Align(
                            alignment: Alignment.topCenter,
                            child: Text('Total')))),
                  ],
                ),),


              ],
            ),),
            Expanded(child: Row(
              children: [
                const Spacer(),
                Expanded(child: Row(
                  children: [
                    Expanded(child: TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    },child:  Text('Cancel', style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold,color: const Color(0xff808080)),),)),



                    Expanded(child: TextButton(onPressed: onConfirm,child: Text('Confirm', style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, color: AppColors.kBlue)),)),
                  ],
                ))
              ],
            ),)

          ],
        ),
      ),

    );
  }
}
