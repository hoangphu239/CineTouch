import 'package:demo_movie/network/book_client.dart';
import 'package:dio/dio.dart';

class ServerAPI {

  Future<Response> signIn(String username, String pass) {
    return BookClient.instance.dio.post(
      'https://dummyjson.com/auth/login',
      data: {
        'username': username,
        'password': pass,
      },
    );
  }

  Future<Response> getListMovie() {
    return BookClient.instance.dio.get("https://api.themoviedb.org/3/discover/tv?api_key=de2ed78c355f987d0230fd0b9772471e&language=en-US&sort_by=popularity.desc&page=40&timezone=America%2FNew_York&include_null_first_air_dates=false");
  }
}