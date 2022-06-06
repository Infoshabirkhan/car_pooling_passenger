import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingTimeCubit extends Cubit<TimeOfDay> {
  BookingTimeCubit(super.initialState);

  getTime({required state}) {
    emit(state);
  }
}
