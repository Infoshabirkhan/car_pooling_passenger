import '../../model/matched_rides_models.dart';

class MatchedRidesRepo {
  static Future<List<MatchedRidesModel>> getData() async {
    final map = [
      {
        "user_Name": "John  Doe",
        "ratings": "4.5",
        "seat_Available": "2",
        "rupees": "200",
      },
      {
        "user_Name": "John  Doe",
        "ratings": "4.5",
        "seat_Available": "2",
        "rupees": "200",
      },
      {
        "user_Name": "John  Doe",
        "ratings": "4.5",
        "seat_Available": "2",
        "rupees": "200",
      },
      {
        "user_Name": "John  Doe",
        "ratings": "4.5",
        "seat_Available": "2",
        "rupees": "200",
      }
    ];

    List<MatchedRidesModel> list = [];
    for (var rides in map) {
      MatchedRidesModel model = MatchedRidesModel.fromJson(rides);
      list.add(model);
    }

    return list;
  }
}
