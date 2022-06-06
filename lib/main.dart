import 'package:car_pooling_passanger/Controller/cubits/home_screen_cubit/home_api_cubit.dart';
import 'package:car_pooling_passanger/Controller/cubits/matched_rides_cubit/matched_rides_cubit.dart';
import 'package:car_pooling_passanger/Controller/cubits/settings_views_cubit/setting_api_cubit.dart';
import 'package:car_pooling_passanger/View/splash_view/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Controller/cubits/booking_cubit/booking_cubit.dart';

import 'Controller/cubits/delivery_view_cubits/time_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));

  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(DevicePreview(
      enabled: true, builder: (BuildContext context) => const MyApp()));

//  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  BookingTimeCubit(const TimeOfDay(hour: 8, minute: 33))),
          BlocProvider(
              create: (context) =>
                  TimeCubit(const TimeOfDay(hour: 8, minute: 33))),
          BlocProvider(create: (context) => HomeApiCubit()),
          BlocProvider(create: (context) => SettingApiCubit()),
          BlocProvider(create: (context) => MatchedRidesCubit()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Car pooling',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Splashscreen(),
        ),
      ),
      designSize: const Size(375, 812),
    );
  }
}
