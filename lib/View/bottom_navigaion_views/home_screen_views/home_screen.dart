import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/Model/utils/appicons.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/home_screen_views/booking_rides_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../my_static_properites.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "Home",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.kBlack,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior(
         androidOverscrollIndicator: AndroidOverscrollIndicator.stretch
               ),
        child: ListView(
          padding: EdgeInsets.only(left: 16.sp, right: 15.sp),
          children: [
            SizedBox(
              height: 27.sp,
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                      child: InkWell(
                          onTap: () {

                            /// It will navigate to the Booking screen
                            /// booking screen is on Index 8 in bottom navigation screen
                            MyBottomNavigation.pageController.jumpToPage(8);
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 5.sp),
                            height: 105.sp,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Image.asset(
                                    "assets/images/pic_three.png",
                                  ),
                                ),
                                Expanded(
                                    child: Text(
                                  "Make Bookings",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.kBlack),
                                )),
                              ],
                            ),
                          ))),
                ),
                Expanded(
                    child: InkWell(
                      onTap: (){

                        // It will Navigate it to Delivery Screen //
                        // where delivery screen is on index 6 in
                        //  bottom navigation
                        MyBottomNavigation.pageController.jumpToPage(6);


                      },
                      child: Card(
                        child: Container(
                        margin: EdgeInsets.only(left: 5.sp),
                        height: 105.sp,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child:
                                    Image.asset("assets/images/pic_two.png")),
                            Expanded(
                                child: Text(
                              "Make Delivery",
                              style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.kBlack),
                            )),
                          ],
                        ),
                      ),
                      ),
                    ),

                ),
                const Spacer(),
              ],
            ),
            SizedBox(
              height: 33.sp,
            ),
            Text(
              "Booked Rides",
              style: TextStyle(
                  color: AppColors.kGreyFourth,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp),
            ),
            SizedBox(
              height: 15.sp,
            ),
            ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (ctx, index) {
                  return BookRideWidget(
                    currentIndex: index,
                      myIcon: index % 2 == 0
                          ? AppIcons.seatBooked
                          : AppIcons.bucket,
                      name: index % 2 == 0 ? "Booked Seats: 2" : "Delivery");
                }),
          ],
        ),
      ),
    );
  }
}
