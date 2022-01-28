// To parserequired this JSON data, do
//
//     final UserDataModel = UserDataModelFromJson(jsonString);

import 'dart:convert';

UserDataModel userDataModelFromJson(String str) =>
    UserDataModel.fromJson(json.decode(str));

class UserDataModel {
  UserDataModel({
    required this.data,
  });

  List<Datum> data;

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  Datum(
      {required this.id,
      required this.email,
      required this.name,
      required this.avatar,
      required this.followers});

  int id;
  String email;
  String name;
  String avatar;
  int followers;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        email: json["email"],
        name:
            "${json['first_name'].toString()} ${json['last_name'].toString()}",
        avatar: json["avatar"],
        followers: json["id"],
      );
}
