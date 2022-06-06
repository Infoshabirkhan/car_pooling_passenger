import '../../Model/settings_model.dart';

class SettingsRepo {
  static Future<SettingsModel> getData() async {
    final map = {
      "user_name": "John Doe",
      "gender": "Male",
      "Phone_no": "+9287898878957",
      "email": "john12@gmail.com",
      "address": "demo address here street"
    };

    SettingsModel model = SettingsModel.fromMap(map);

    return model;
  }
}
