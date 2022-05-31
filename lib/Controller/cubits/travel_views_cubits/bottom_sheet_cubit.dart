import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


class BottomSheetCubit extends Cubit<bool> {
  BottomSheetCubit(super.initialState);

  adjustHeight({required isExpand}) {
    emit(isExpand);
  }
}
