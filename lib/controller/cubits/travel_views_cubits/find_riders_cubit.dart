
import 'package:flutter_bloc/flutter_bloc.dart';

class FindRidersCubit extends Cubit<int> {
  FindRidersCubit(super.initialState);

  ridersScreen({required number}){

    emit(number);
  }
}
