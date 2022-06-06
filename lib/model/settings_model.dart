// To parse this JSON data, do
//
//     final SettingsModel = SettingsModelFromMap(jsonString);

import 'dart:convert';

SettingsModel SettingsModelFromMap(String str) => SettingsModel.fromMap(json.decode(str));

String SettingsModelToMap(SettingsModel data) => json.encode(data.toMap());

class SettingsModel {
  SettingsModel({
    this.userName,
    this.gender,
    this.phoneNo,
    this.email,
    this.address,
  });

  String? userName;
  String? gender;
  String? phoneNo;
  String? email;
  String? address;

  factory SettingsModel.fromMap(Map<String, dynamic> json) => SettingsModel(
    userName: json["user_name"],
    gender: json["gender"],
    phoneNo: json["Phone_no"],
    email: json["email"],
    address: json["address"],
  );

  Map<String, dynamic> toMap() => {
    "user_name": userName,
    "gender": gender,
    "Phone_no": phoneNo,
    "email": email,
    "address": address,
  };
}
