import 'package:flutter_bloc/flutter_bloc.dart';

class WeightDropDown extends Cubit<String> {
  WeightDropDown(super.initialState);

  getMonths({required month}) {
    emit(month);
  }
}
