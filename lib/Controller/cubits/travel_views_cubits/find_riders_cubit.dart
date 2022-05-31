import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


class FindRidersCubit extends Cubit<int> {
  FindRidersCubit(super.initialState);

  ridersScreen({required number}){

    emit(number);
  }
}
