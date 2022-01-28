import 'dart:convert';

// class Post {
//   final String id, title, body;

//   Post(this.id, this.title, this.body);

//   factory Post.fromJSON(Map<String, dynamic> json) {
//     return Post(
//       json['id'].toString(),
//       json['title'],
//       json['body'],
//     );
//   }
// }

// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

List<PostModel> postModelFromJson(String str) => model =
    List<PostModel>.from(json.decode(str).map((x) => PostModel.fromJson(x)));

String postModelToJson(List<PostModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
List<PostModel> model = [];

class PostModel {
  PostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
