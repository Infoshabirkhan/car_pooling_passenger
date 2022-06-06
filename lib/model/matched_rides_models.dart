// To parse this JSON data, do
//
//     final matchedRidesModel = matchedRidesModelFromJson(jsonString);

import 'dart:convert';

class MatchedRidesModel {
  MatchedRidesModel({
     this.userName,
     this.ratings,
     this.seatAvailable,
     this.rupees,
  });

  String? userName;
  String? ratings;
  String? seatAvailable;
  String? rupees;

  factory MatchedRidesModel.fromRawJson(String str) => MatchedRidesModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MatchedRidesModel.fromJson(Map<String, dynamic> json) => MatchedRidesModel(
    userName: json["user_Name"],
    ratings: json["ratings"],
    seatAvailable: json["seat_Available"],
    rupees: json["rupees"],
  );

  Map<String, dynamic> toJson() => {
    "user_Name": userName,
    "ratings": ratings,
    "seat_Available": seatAvailable,
    "rupees": rupees,
  };
}
