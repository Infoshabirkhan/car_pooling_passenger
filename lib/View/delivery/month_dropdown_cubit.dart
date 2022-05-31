import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class MonthDropDown extends Cubit<String>{
  MonthDropDown(super.initialState);

  getDropDown({required months}){
    emit(months);
  }

}