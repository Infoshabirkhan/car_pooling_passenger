import 'dart:async';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/my_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../Controller/cubits/travel_views_cubits/bottom_sheet_cubit.dart';

void main() => runApp(const TravelScreen());

class TravelScreen extends StatefulWidget {
  const TravelScreen({Key? key}) : super(key: key);

  @override
  TravelScreenState createState() => TravelScreenState();
}

class TravelScreenState extends State<TravelScreen> {

  // final CameraPosition _initialCameraPosition = const CameraPosition(
  //     target: LatLng(24.903623, 67.198367));

  Completer<GoogleMapController> controller = Completer();

  static const LatLng _center = LatLng(34.025917, 71.560135);

  void _onMapCreated(GoogleMapController mapControls) {
    controller.complete(mapControls);

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
    return BlocProvider(

      create: (context) => BottomSheetCubit(false),
      child: Scaffold(
        body: Stack(
          children: [


            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition:  CameraPosition(
                target: _center,
                zoom: 15.sp,

              ),
              mapType: MapType.normal,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Align(
            //     alignment: Alignment.topRight,
            //     child: FloatingActionButton(
            //       onPressed: () {
            //         setState(() {
            //           _currentMapType = _currentMapType == MapType.hybrid
            //               ? MapType.terrain
            //               : MapType.terrain;
            //         });
            //
            //       },
            //       materialTapTargetSize: MaterialTapTargetSize.padded,
            //       backgroundColor: Colors.green,
            //       child: const Icon(Icons.map, size: 36.0),
            //     ),
            //   ),
            // ),


            BlocBuilder<BottomSheetCubit, bool>(
              builder: (context, state) {
                return MyBottomSheet(currentState: state, onTap: (){
                  context.read<BottomSheetCubit>().adjustHeight(isExpand: !state);
                });
              },
            ),



          ],
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
