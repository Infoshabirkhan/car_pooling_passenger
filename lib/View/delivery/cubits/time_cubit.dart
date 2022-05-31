import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TimeCubit extends Cubit<TimeOfDay>{
  TimeCubit(super.initialState);
  static String date = '';

  getTime({required state}){
    emit(state);
    date = state;
  }

}