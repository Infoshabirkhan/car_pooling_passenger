import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/travel_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'View/bottom_navigaion_views/bottom_navigaion_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark));

  runApp(DevicePreview(
      enabled: true,
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

      builder: (BuildContext context, Widget? child) => MaterialApp(
        title: 'Car pooling',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: const BottomNavigationScreen(),
      ),

      designSize: Size(375, 812),
    );
  }
}
