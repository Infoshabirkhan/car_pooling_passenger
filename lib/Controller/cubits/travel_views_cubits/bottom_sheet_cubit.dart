import 'package:bloc/bloc.dart';



class BottomSheetCubit extends Cubit<bool> {
  BottomSheetCubit(super.initialState);

  adjustHeight({required isExpand}) {
    emit(isExpand);
  }
}
