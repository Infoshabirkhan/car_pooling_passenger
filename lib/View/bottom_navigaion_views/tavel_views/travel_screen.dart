import 'dart:async';

import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/my_bottom_sheet.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/tavel_views/my_riders_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../Controller/cubits/travel_views_cubits/bottom_sheet_cubit.dart';
import '../../../Model/utils/appicons.dart';

void main() => runApp(const TravelScreen());

class TravelScreen extends StatefulWidget {
  const TravelScreen({Key? key}) : super(key: key);

  @override
  _TravelScreenState createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {

  // final CameraPosition _initialCameraPosition = const CameraPosition(
  //     target: LatLng(24.903623, 67.198367));


  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);

  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (context) => BottomSheetCubit(false),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 1.sh,
              width: 1.sw,
              // color: Colors.blue,
              child:  GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,

                ),
                mapType: MapType.normal,
              ),

            ),


            BlocBuilder<BottomSheetCubit, bool>(
              builder: (context, state) {
                return MyBottomSheet(currentState: state, onTap: (){
                  context.read<BottomSheetCubit>().adjustHeight(isExpand: !state);
                });
              },
            )
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
