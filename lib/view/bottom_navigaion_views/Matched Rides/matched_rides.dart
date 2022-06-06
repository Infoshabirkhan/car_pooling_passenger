import 'package:car_pooling_passanger/Controller/cubits/matched_rides_cubit/matched_rides_cubit.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/Matched%20Rides/custom_matched.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../my_static_properites.dart';
import 'land_scape_view/match_rides_landscape.dart';

class MatchedRides extends StatefulWidget {
  const MatchedRides({Key? key}) : super(key: key);

  @override
  State<MatchedRides> createState() => _MatchedRidesState();
}

class _MatchedRidesState extends State<MatchedRides> {
  @override
  void initState() {
    context.read<MatchedRidesCubit>().getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Matched Rides',
            style: TextStyle(
              color: Colors.black,
              // fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BlocBuilder<MatchedRidesCubit, MatchedRidesState>(
          builder: (context, state) {
            if (state is MatchedRidesLoading) {
              return const CircularProgressIndicator();
            } else if (state is MatchedRidesLoaded) {
              return ListView.builder(
                  padding: EdgeInsets.only(left: 16.sp, right: 16.sp),
                  itemCount: state.model.length,
                  itemBuilder: (context, index) {
                    var data = state.model[index];

                    if (size.width > 600) {
                      return MatchRidesLandScape(onTap: () {  }, model: data,);
                    } else {
                      return CustomMatched.getCard(
                          model: data,
                          onTap: () {
                            MyBottomNavigation.pageController.jumpToPage(3);
                          });
                    }
                  });
            } else if (state is MatchedRidesError) {
              return Center(
                child: Text(state.error),
              );
            } else {
              return Container();
            }
          },
        ));
  }
}
