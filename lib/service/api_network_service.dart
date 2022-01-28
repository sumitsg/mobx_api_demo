import 'dart:convert';

import 'package:mobx_api_demo/model/post_model.dart';
import 'package:mobx_api_demo/model/user_data_model.dart';
import 'package:http/http.dart' as http;

class NetworkService {
  List<PostModel> post = [];
  List<Datum> datum = [];

  // Future getData(String url) async {
  //   final response = await http.get(Uri.parse(url));

  //   if (response.statusCode == 200) {
  //     final data = jsonDecode(response.body);
  //     users =
  //         (data['data'] as List).map((json) => User.fromJSON(json)).toList();

  //     return users;
  //   } else {
  //     print('Error in URL');
  //   }
  // }

  Future<List<Datum>?> getDatum(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return UserDataModel.fromJson(jsonDecode(response.body)).data;
      } else {
        print('Error in URL');
      }
    } on Exception catch (e) {
      return null;
    }
  }

  Future<List<PostModel>?> getPost(String url) async {
    // final response = await http.get(Uri.parse(url));
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final result = postModelFromJson(response.body);

        return result;
      } else {
        print('Error in URL');
      }
    } on Exception catch (e) {
      return null;
    }
  }
}
