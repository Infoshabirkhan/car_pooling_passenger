import 'package:car_pooling_passanger/Controller/repositary/rider_detail_repo.dart';
import 'package:car_pooling_passanger/model/rider_details_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'rider_api_state.dart';

class RiderApiCubit extends Cubit<RiderApiState> {
  RiderApiCubit() : super(RiderApiInitial());

  Future getData() async {
    emit(RiderApiLoading());

    var data = await RiderDetailRepo.getData();

    if (data.isNotEmpty) {
      emit(RiderApiLoaded(model: data));
    } else {
      emit(RiderApiError(error: 'Something went Wrong'));
    }
    try {} catch (e) {
      emit(RiderApiError(error: e.toString()));
    }
  }
}
