import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/dropdown_month_cubit.dart';
import 'package:car_pooling_passanger/Controller/cubits/delivery_view_cubits/month_dropdown_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Controller/cubits/delivery_view_cubits/am_pm_dropdown_dart.dart';



class CustomDeliveryWidget {



  static Widget dateTextField({required int space}) {
    return TextFormField(
      maxLength: 2,

      inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
      keyboardType: TextInputType.number,
      style: TextStyle(
        color: AppColors.kblackSecondary,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: space.sp),
        border: InputBorder.none,
        hintText: '00',
        counterText: "",
      ),
    );
  }

  //time text field
  static Widget timeTextField() {
    return TextFormField(
      inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
      keyboardType: TextInputType.number,
      style: TextStyle(
        color: AppColors.bluelight,
      ),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 30.sp),
          border: InputBorder.none,
          hintText: '00:00'
      ),
    );
  }

  //design text field
  static Widget getTextField({required String hint, IconData? icon}) {
    return SizedBox(
      height: 42.sp,
      width: 322.sp,
      child: TextFormField(
        style: TextStyle(
          color: AppColors.kblackSecondary,
        ),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffBAD2E3)),
              borderRadius: BorderRadius.circular(10.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.bluelight),
            ),
            hintText: hint,
            suffixIcon: Icon(
              icon, color: AppColors.kblackSecondary, size: 30.sp,)
        ),
      ),
    );
  }

  static Widget dropdownAm() {
    List<String> month = [
      'AM',
      'PM',
    ];
    return BlocBuilder<AmPmDropDownCubit, String>(
      builder: (context, state) {
        return DropdownButton<String>(
            underline: const SizedBox(),
            icon: const Visibility(visible: false, child: Icon(Icons.arrow_downward)),
            value: state,
            items: month.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              context.read<AmPmDropDownCubit>().getAmPm(state: newValue);
            });
      },
    );
  }

  static Widget dropDownWi(BuildContext context) {
    List<String> month = [
      'KG',
      'G',
    ];
    return BlocBuilder<WhightDropDown, String>(
      builder: (context, state) {
        return DropdownButton<String>(
            underline: const SizedBox(),
            icon: const Visibility(visible: false, child: Icon(Icons.arrow_downward)),
            value: state,
            items: month.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (newValue) {
              context.read<WhightDropDown>().getmonths(month: newValue);
            });
      },
    );
  }

  static Widget dropdownMon(BuildContext context) {
    List month = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];

    return BlocBuilder<MonthDropDown, String>(
      builder: (context, state) {
        return DropdownButton(
            underline: const SizedBox(),
            icon: const Visibility(visible: false, child: Icon(Icons.arrow_downward)),
            value: state,
            items: month.map((items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items)

              );
            }).toList(),
            onChanged: (newValue) {
              context.read<MonthDropDown>().getDropDown(months: newValue);
            });
      },
    );
  }

}
