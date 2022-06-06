import 'dart:async';

import 'package:car_pooling_passanger/Controller/cubits/travel_views_cubits/find_riders_cubit.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/request_accepted_view/landscape_views/picked_up_landscape_card.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/request_accepted_view/landscape_views/request_accepted_landscape_card.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/request_accepted_view/picked_up_card.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/request_accepted_view/request_accepted_card.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/request_accepted_view/rider_arrived_card.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/request_accepted_view/toward_direction_card.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/my_static_properites.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'landscape_views/rider_arrived_landscape_card.dart';
import 'landscape_views/toward_direction_landscape_card.dart';

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
    final Size size = MediaQuery.of(context).size;
    return MultiBlocProvider(
      providers: [
        BlocProvider<FindRidersCubit>(create: (context) => FindRidersCubit(1)),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              GoogleMap(
                zoomControlsEnabled: false,

                onMapCreated: _onMapCreated,
                initialCameraPosition: const CameraPosition(
                  target: _center,
                  zoom: 15.0,
                ),
                mapType: MapType.normal,
              ),

              /// when request has been accepted by rider this card will
              /// appear
              /// =======================================
              BlocBuilder<FindRidersCubit, int>(
                builder: (context, state) {
                  return Visibility(
                    visible: state == 1 ? true : false,
                    child: size.width > 600
                        ? Positioned(
                            bottom: 0.sp,
                            child: SizedBox(
                                width: 1.sw,
                                height: 320.h,
                                child: RequestAcceptedLandscapeCard(
                                  onTap: () {
                                    context
                                        .read<FindRidersCubit>()
                                        .ridersScreen(number: 2);
                                  },
                                )))
                        : Positioned(
                            bottom: 0.sp,
                            child: SizedBox(
                                width: 1.sw,
                                height: 200.h,
                                child: RequestAcceptedCard(
                                  onTap: () {
                                    context
                                        .read<FindRidersCubit>()
                                        .ridersScreen(number: 2);
                                  },
                                ))),
                  );
                },
              ),

              /// ======================================

              ///  Rider has been Arrived this card will appear
              ///  ==============================
              BlocBuilder<FindRidersCubit, int>(
                builder: (context, state) {
                  return Visibility(
                    visible: state == 2 ? true : false,
                    child: size.width > 600
                        ? RiderArrivedLandscapeCard(
                            onTap: () {
                              context
                                  .read<FindRidersCubit>()
                                  .ridersScreen(number: 3);
                            },
                          )
                        : RiderArrivedCard(
                            onTap: () {
                              context
                                  .read<FindRidersCubit>()
                                  .ridersScreen(number: 3);
                            },
                          ),
                  );
                },
              ),
              BlocBuilder<FindRidersCubit, int>(
                builder: (context, state) {
                  return Visibility(
                    visible: state == 3 ? true : false,
                    child: size.width > 600
                        ? PickedUpLandscapeCard(
                            onTap: () {
                              context
                                  .read<FindRidersCubit>()
                                  .ridersScreen(number: 4);
                            },
                          )
                        : PickedUpCard(
                            onTap: () {
                              context
                                  .read<FindRidersCubit>()
                                  .ridersScreen(number: 4);
                            },
                          ),
                  );
                },
              ),

              /// =========================================

              ///  Toward direction card is here
              ///  =====================================
              BlocBuilder<FindRidersCubit, int>(
                builder: (context, state) {
                  return Visibility(
                    visible: state == 4 ? true : false,
                    child: size.width > 600 ?
                    TowardDirectionLandscapeCard(
                      onTap: () {
                        MyBottomNavigation.pageController.jumpToPage(5);
                      },
                    )
                    :
                    TowardDirectionCard(
                      onTap: () {
                        MyBottomNavigation.pageController.jumpToPage(5);
                      },
                    )
                    ,
                  );
                },
              ),
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
