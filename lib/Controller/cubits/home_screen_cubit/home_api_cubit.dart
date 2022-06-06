import 'package:bloc/bloc.dart';
import 'package:car_pooling_passanger/Controller/repositary/home_repo.dart';
import 'package:car_pooling_passanger/Model/home_models.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_api_state.dart';

class HomeApiCubit extends Cubit<HomeApiState> {
  HomeApiCubit() : super(HomeApiInitial());

  Future getData() async {
    emit(HomeApiLoading());

    try {
      var data = await HomeRepo.getData();

      if (data.isNotEmpty) {
        Future.delayed(const Duration(milliseconds: 200), () {
          emit(HomeApiLoaded(model: data));
        });
      } else {
        emit(HomeApiError(error: 'No data found'));
      }
    } catch (e) {
      emit(HomeApiError(error: e.toString()));
    }
  }
}
