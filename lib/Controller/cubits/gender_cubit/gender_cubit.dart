import 'package:bloc/bloc.dart';


class GenderCubit extends Cubit<String> {
  GenderCubit(super.initialState);

   getGender({required genderSelection})
   {
     emit(genderSelection);
   }

}
