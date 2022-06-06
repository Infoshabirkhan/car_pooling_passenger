import 'dart:async';

import 'package:car_pooling_passanger/Controller/cubits/travel_views_cubits/find_riders_cubit.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/landscape_views/bottom_sheet_landscape.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/search_rides_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../Controller/cubits/travel_views_cubits/bottom_sheet_cubit.dart';
import 'landscape_views/search_rides_landscape_view.dart';
import 'my_bottom_sheet.dart';

void main() => runApp(const TravelScreen());

class TravelScreen extends StatefulWidget {
  const TravelScreen({Key? key}) : super(key: key);

  @override
  TravelScreenState createState() => TravelScreenState();
}

class TravelScreenState extends State<TravelScreen> {
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
        BlocProvider<BottomSheetCubit>(
            create: (context) => BottomSheetCubit(false)),
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
              BlocBuilder<FindRidersCubit, int>(
                builder: (context, state) {
                  if (size.width > 600) {
                    return SearchRideLandscapeView(
                      currentState: state,
                      onTap: () {
                        context.read<FindRidersCubit>().ridersScreen(number: 2);
                      },
                    );
                  } else {
                    return SearchRidesView(
                      currentState: state,
                      onTap: () {
                        context.read<FindRidersCubit>().ridersScreen(number: 2);
                      },
                    );
                  }
                },
              ),
              BlocBuilder<FindRidersCubit, int>(
                builder: (context, state) {
                  return Visibility(
                    visible: state == 2 ? true : false,
                    child: BlocBuilder<BottomSheetCubit, bool>(
                      builder: (context, state) {
                        if (size.width > 600) {
                          return BottomSheetLandscape(
                              cancelClick: () {
                                context
                                    .read<FindRidersCubit>()
                                    .ridersScreen(number: 1);
                              },
                              currentState: state,
                              onTap: () {
                                context
                                    .read<BottomSheetCubit>()
                                    .adjustHeight(isExpand: !state);
                              });
                        } else {
                          return MyBottomSheet(
                              cancelClick: () {
                                context
                                    .read<FindRidersCubit>()
                                    .ridersScreen(number: 1);
                              },
                              currentState: state,
                              onTap: () {
                                context
                                    .read<BottomSheetCubit>()
                                    .adjustHeight(isExpand: !state);
                              });
                        }
                      },
                    ),
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
