

import 'package:flutter_bloc/flutter_bloc.dart';

class GenderCubit extends Cubit<String> {
  GenderCubit(super.initialState);

   getGender({required genderSelection})
   {
     emit(genderSelection);
   }

}
