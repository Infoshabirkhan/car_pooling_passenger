import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationCubit extends Cubit<int> {
  BottomNavigationCubit(super.initialState);

  getNextScreen({required index}) {
    emit(index);
  }
}
