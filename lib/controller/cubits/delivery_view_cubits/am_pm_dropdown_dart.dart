import 'package:flutter_bloc/flutter_bloc.dart';

class AmPmDropDownCubit extends Cubit<String> {
  AmPmDropDownCubit(super.initialState);
  getAmPm({required state}) {
    emit(state);
  }
}
