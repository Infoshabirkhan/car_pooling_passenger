import 'package:car_pooling_passanger/Controller/repositary/matched_rides_repo.dart';
import 'package:car_pooling_passanger/model/matched_rides_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'matched_rides_state.dart';

class MatchedRidesCubit extends Cubit<MatchedRidesState> {
  MatchedRidesCubit() : super(MatchedRidesInitial());

  Future getData() async {
    emit(MatchedRidesLoading());

    var data = await MatchedRidesRepo.getData();
    if (data != null) {
      emit(MatchedRidesLoaded(model: data));
    } else {
      emit(MatchedRidesError(error: 'Something went Wrong'));
    }
    try {} catch (e) {
      emit(MatchedRidesError(error: e.toString()));
    }
  }
}
