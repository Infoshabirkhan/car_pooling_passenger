import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/View/utils/custom_widgets/custom_button.dart';
import 'package:car_pooling_passanger/View/utils/custom_widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Controller/cubits/gender_cubit/gender_cubit.dart';
import '../bottom_navigaion_views/bottom_navigaion_screen.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {


  List gender = ['Male', 'Female', 'Other'];


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GenderCubit('Male'),
      child: Scaffold(
        backgroundColor:AppColors.kWhite,
        appBar: AppBar(
          backgroundColor: AppColors.kWhite,
          elevation: 0.sp,
          centerTitle: true,
          title:   Text(
            "User Profile",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                color: AppColors.kBlack),
          ),
        ),

        body: ScrollConfiguration(
          behavior: const  ScrollBehavior(),
          child: ListView(
            padding: EdgeInsets.only(left: 27.sp, right: 26.sp),

            children: [


              SizedBox(
                height: 40.h,
              ),
              Center(
                child: SizedBox(
                  height: 100.h,
                  width: 90.h,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [


                      Container(

                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle


                        ),
                        height: 100.h,
                        width: 90.h,
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/user_profile.png'),
                        ),

                      ),
                      Positioned(
                          bottom: 0.sp,
                          right: 0.sp,
                          child: InkWell(
                            onTap: (){},
                            child: Center(
                                child: Container(
                                    width: 29.25.w,
                                    height: 29.25.h,
                                    decoration: BoxDecoration(
                                        color: AppColors.kBlue,
                                        borderRadius: BorderRadius.circular(30.r)),
                                    child: const Icon(Icons.add, color: Colors.white))),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 33.3.h,
              ),
              Text(
                "Personal Information",
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.kBlack),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Name",
                style: TextStyle(fontSize: 15.sp, color: AppColors.kGreyFourth),
              ),
              SizedBox(
                height: 5.h,
              ),

              SizedBox(height: 42.h, child: const MyTextField()),
              SizedBox(
                height: 18.h,
              ),
              Text(
                "Email address",
                style: TextStyle(fontSize: 15.sp, color: AppColors.kGreyFourth),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(height: 42.h, child: const MyTextField()),
              SizedBox(
                height: 18.h,
              ),
              Text(
                "Address",
                style: TextStyle(fontSize: 15.sp, color: AppColors.kGreyFourth),
              ),
              SizedBox(
                height: 5.sp,
              ),
              SizedBox(height: 42.h, child: const MyTextField()),
              SizedBox(
                height: 18.h,
              ),
              Text(
                "Gender",
                style: TextStyle(fontSize: 15.sp, color: AppColors.kGreyFourth),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(height: 42.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(
                          color: AppColors.kBorderFieldColor
                      )
                  ),
                  child: BlocBuilder<GenderCubit, String>(
                    builder: (context, state) {
                      return DropdownButtonFormField(

                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10.sp),

                          border: InputBorder.none,
                        ),
                          isExpanded: true,
                          value: state,

                          items: gender.map((valueItem) {
                            return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem));
                          }).toList(),


                          onChanged: (newValue) {
                            // setState(() {
                            //   chooseGender = newValue.toString();
                            // });

                            context.read<GenderCubit>().getGender(genderSelection: newValue);
                          });
                    },
                  )),
              SizedBox(
                height: 60.h,
              ),
              // MyElevatedButton(buttonName: "Save", onPress: () {
              //   Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              //     return const BottomNavigationScreen();
              //   }));
              // },),
              CustomButton(text: 'Save', ontap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)

                {
                  return const BottomNavigationScreen();
                }
                ));
              }, color: AppColors.kBlue),
              SizedBox(
                height: 14.h,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Skip",
                    style:
                    TextStyle(fontSize: 15.sp, color: AppColors.kGreyFourth),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
