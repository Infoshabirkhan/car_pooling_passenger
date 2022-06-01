import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


class BookRideCubit extends Cubit<bool> {
  BookRideCubit(super.initialState);

  manageBooking({required isCancel}){

    emit(isCancel);
  }

}
