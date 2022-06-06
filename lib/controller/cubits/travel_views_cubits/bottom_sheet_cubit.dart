import 'package:flutter_bloc/flutter_bloc.dart';

class BottomSheetCubit extends Cubit<bool> {
  BottomSheetCubit(super.initialState);

  adjustHeight({required isExpand}) {
    emit(isExpand);
  }
}
