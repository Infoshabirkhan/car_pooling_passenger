import 'package:car_pooling_passanger/Model/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Model/utils/appcolors.dart';
import '../../../Model/utils/remove_glow.dart';
import '../../user_profile_view/user_profile_screen.dart';

class SettingsLandscapeLoadedData extends StatelessWidget {
  final SettingsModel model;

  const SettingsLandscapeLoadedData({Key? key, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ScrollConfiguration(
          behavior: RemoveGlow(),
          child: ListView(
            children: [
              Center(
                  child: Container(
                height: 150.h,
                width: 40.w,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user_profile.png'),
                ),
              )),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'John Doe',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const UserProfileScreen();
                    }));
                  },
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 8.sp, color: AppColors.kBlue),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        )),
        Expanded(
          flex: 2,
          child: ScrollConfiguration(
            behavior: RemoveGlow(),
            child: ListView(
              children: [
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'Gender',
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  model.gender!,
                  style: TextStyle(
                    fontSize: 8.sp,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  model.phoneNo!,
                  style: TextStyle(
                    fontSize: 8.sp,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                const Divider(),
                Text(
                  'Email Adress',
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.kBlack,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  model.email!,
                  style: TextStyle(
                    fontSize: 8.sp,
                    color: AppColors.kBlack,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Address',
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.kBlack,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  model.address!,
                  style: TextStyle(
                    fontSize: 8.sp,
                    color: AppColors.kBlack,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
