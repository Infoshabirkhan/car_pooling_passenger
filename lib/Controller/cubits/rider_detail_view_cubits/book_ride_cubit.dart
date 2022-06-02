

import 'package:flutter_bloc/flutter_bloc.dart';

class BookRideCubit extends Cubit<bool> {
  BookRideCubit(super.initialState);

  manageBooking({required isCancel}){

    emit(isCancel);
  }

}
