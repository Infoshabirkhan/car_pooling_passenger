import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/travel_screen.dart';
import 'package:car_pooling_passanger/View/splash_view/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'View/bottom_navigaion_views/bottom_navigaion_screen.dart';
import 'View/delivery/cubits/time_cubit.dart';
import 'View/delivery/delivery.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));

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
            create: (context) => TimeCubit(TimeOfDay(hour: 8, minute: 33)),
            child: MaterialApp(
              title: 'Car pooling',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: Splashscreen(),
            ),
          ),

      designSize: Size(375, 812),
    );
  }
}
