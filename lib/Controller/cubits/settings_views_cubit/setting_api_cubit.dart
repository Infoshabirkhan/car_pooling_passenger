import 'package:bloc/bloc.dart';
import 'package:car_pooling_passanger/Controller/repositary/settings_repo.dart';
import 'package:car_pooling_passanger/Model/settings_model.dart';
import 'package:meta/meta.dart';

part 'setting_api_state.dart';

class SettingApiCubit extends Cubit<SettingApiState> {
  SettingApiCubit() : super(SettingApiInitial());

  Future getData() async {
    emit(SettingApiLoading());

    var data = await SettingsRepo.getData();

    if (data != null) {
      emit(SettingApiLoaded(model: data));
    } else {
      emit(SettingApiError(error: 'Something went wrong'));
    }

    try {} catch (e) {
      emit(SettingApiError(error: e.toString()));
    }
  }
}
