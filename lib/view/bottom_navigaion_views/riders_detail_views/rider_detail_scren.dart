import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/riders_detail_views/rider_detail_landscape_loaded.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/riders_detail_views/rider_detail_loaded_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Controller/cubits/rider_detail_view_cubits/book_ride_cubit.dart';
import '../../../Controller/cubits/rider_detail_view_cubits/rider_api_cubit.dart';

class RiderDetailScreen extends StatefulWidget {
  const RiderDetailScreen({Key? key}) : super(key: key);

  @override
  State<RiderDetailScreen> createState() => _RiderDetailScreenState();
}

class _RiderDetailScreenState extends State<RiderDetailScreen> {
  @override
  void initState() {
    context.read<RiderApiCubit>().getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => BookRideCubit(false),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Rider Details',
            style: TextStyle(
              fontFamily: 'SF Pro Text',
              // fontSize: 20.sp,
              color: AppColors.kBlack,
              fontWeight: FontWeight.w700,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: BlocBuilder<RiderApiCubit, RiderApiState>(
          builder: (context, state) {
            if (state is RiderApiLoading) {
              return const CircularProgressIndicator();
            } else if (state is RiderApiLoaded) {
              return ScrollConfiguration(
                  behavior: const ScrollBehavior(),
                  child: size.width > 600
                      ? const RiderDetailLandscapeLoadedList()
                      : const RiderDetailLoadedList());
            } else if (state is RiderApiError) {}
            return Container();
          },
        ),
      ),
    );
  }
}
