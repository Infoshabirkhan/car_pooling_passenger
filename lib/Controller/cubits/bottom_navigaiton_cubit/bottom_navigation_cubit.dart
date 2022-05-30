import 'package:bloc/bloc.dart';

class BottomNavigationCubit extends Cubit<int> {
  BottomNavigationCubit(super.initialState);

  getNextScreen({required index}){
    emit(index);
  }
}
