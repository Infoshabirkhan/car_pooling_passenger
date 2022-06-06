import 'package:car_pooling_passanger/Controller/cubits/home_screen_cubit/home_api_cubit.dart';
import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_loaded_list.dart';
import 'landscape_view/home_landscape_loaded_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeApiCubit>().getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "Home",
            style: TextStyle(
              //fontSize: 20.sp,
              //fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.kBlack,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: BlocBuilder<HomeApiCubit, HomeApiState>(
        builder: (context, state) {
          if (state is HomeApiLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeApiLoaded) {

            if(size.width > 600){

              return HomeLandscapeLoadedData(model: state.model);
            }else{
              return HomeLoadedList(model: state.model);

            }
          } else if (state is HomeApiError) {
            return Center(
              child: Text(state.error),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
