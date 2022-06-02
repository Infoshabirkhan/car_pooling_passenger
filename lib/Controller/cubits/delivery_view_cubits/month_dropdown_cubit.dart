import 'package:flutter_bloc/flutter_bloc.dart';

class MonthDropDown extends Cubit<String>{
  MonthDropDown(super.initialState);

  getDropDown({required months}){
    emit(months);
  }

}