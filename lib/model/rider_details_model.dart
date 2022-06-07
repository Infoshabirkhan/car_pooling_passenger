import 'dart:convert';

class RiderDetailModel {
  RiderDetailModel({
    this.userName,
    this.ratings,
    this.seatAvailable,
    this.rupees,
  });

  String? userName;
  String? ratings;
  String? seatAvailable;
  String? rupees;

  factory RiderDetailModel.fromRawJson(String str) =>
      RiderDetailModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RiderDetailModel.fromJson(Map<String, dynamic> json) =>
      RiderDetailModel(
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
