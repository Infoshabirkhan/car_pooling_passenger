import 'dart:convert';

List<HomeModel> homeModelFromMap(String str) =>
    List<HomeModel>.from(json.decode(str).map((x) => HomeModel.fromMap(x)));

String homeModelToMap(List<HomeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class HomeModel {
  HomeModel({
    this.destination,
    this.rupees,
    this.location,
    this.bookedSeats,
    this.dateTime,
  });

  String? destination;
  String? rupees;
  String? location;
  String? bookedSeats;
  String? dateTime;

  factory HomeModel.fromMap(Map<String, dynamic> json) => HomeModel(
        destination: json["destination"],
        rupees: json["rupees"],
        location: json["location"],
        bookedSeats: json["booked_seats"],
        dateTime: json["Date_time"],
      );

  Map<String, dynamic> toMap() => {
        "destination": destination,
        "rupees": rupees,
        "location": location,
        "booked_seats": bookedSeats,
        "Date_time": dateTime,
      };
}
