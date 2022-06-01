import 'dart:async';

import 'package:car_pooling_passanger/Controller/cubits/travel_views_cubits/find_riders_cubit.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/request_accepted_view/request_accepted_card.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/search_rides_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../Controller/cubits/travel_views_cubits/bottom_sheet_cubit.dart';

void main() => runApp(const RequestAcceptedScreen());

class RequestAcceptedScreen extends StatefulWidget {
  const RequestAcceptedScreen({Key? key}) : super(key: key);

  @override
  RequestAcceptedScreenState createState() => RequestAcceptedScreenState();
}

class RequestAcceptedScreenState extends State<RequestAcceptedScreen> {

  // final CameraPosition _initialCameraPosition = const CameraPosition(
  //     target: LatLng(24.903623, 67.198367));

  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = LatLng(34.025917, 71.560135);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);

    //
    // Completer<GoogleMapController> _controller = Completer();
    //
    // static const LatLng _center = LatLng(45.521563, -122.677433);
    //
    // void _onMapCreated(GoogleMapController controller) {
    //   _controller.complete(controller);

  }

  // MapType _currentMapType = MapType.hybrid;
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(

      providers: [

        BlocProvider<BottomSheetCubit>(
            create: (context) => BottomSheetCubit(false)),
        BlocProvider<FindRidersCubit>(create: (context) => FindRidersCubit(1)),


      ],
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [


              GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: const CameraPosition(
                  target: _center,
                  zoom: 15.0,

                ),
                mapType: MapType.normal,
              ),



              Positioned(
                  bottom: 0.sp,
                  child: Container(

                      width: 1.sw,
                      height: 200.h,
                      child: RequestAcceptedCard())),



            ],
          ),
        ),
      ),
    );
  }

}
// body: Container(
// // color: Colors.blue,
// child: GoogleMap(
//
// initialCameraPosition: _initialCameraPosition,
// mapType: MapType.normal,
//
//
// ),
// ),
