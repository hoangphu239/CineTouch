import 'dart:async';
import 'package:demo_movie/di/di.dart';
import 'package:demo_movie/model/user_data.dart';
import 'package:demo_movie/network/my_dio.dart';

class LoginRepository {
  Future<UserData> signIn(String username, String password) async {
    final response = await sl<MyDio>().postData(endPoint: "auth/login", data: {
      'username': username,
      'password': password,
    });
    if (response.statusCode == 200) {
      final c = Completer<UserData>();
      c.complete(UserData.fromJson(response.data));
      return c.future;
    } else {
      throw Exception("Can\'t get user");
    }
  }
}
