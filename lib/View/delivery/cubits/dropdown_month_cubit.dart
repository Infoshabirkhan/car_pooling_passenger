import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class WhightDropDown extends Cubit<String> {
  WhightDropDown(super.initialState);

  getmonths({required month}){
    emit(month);
  }

}
