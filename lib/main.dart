

import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/travel_screen.dart';

import 'package:car_pooling_passanger/View/bookkings_views/booking_cubit/booking_cubit.dart';

import 'package:car_pooling_passanger/View/splash_view/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'View/bookkings_views/booking_cubit/booking_cubit.dart';
import 'View/bottom_navigaion_views/bottom_navigaion_screen.dart';
import 'View/delivery/delivery.dart';

import 'Controller/cubits/delivery_view_cubits/time_cubit.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(DevicePreview(
      enabled: false,
      builder: (BuildContext context) =>
      const MyApp()));

//  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      builder: (BuildContext context, Widget? child) =>
          BlocProvider(
            create: (context) => TimeCubit(const TimeOfDay(hour: 8, minute: 33)),
            child: BlocProvider(
              create: (context) => BookingTimeCubit(const TimeOfDay(hour: 8, minute: 33)),
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Car pooling',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                home: const Splashscreen(),
              ),
            ),
          ),

      designSize: const Size(375, 812),
    );
  }
}
