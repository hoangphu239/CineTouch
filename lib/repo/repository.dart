import 'dart:async';
import 'package:demo_movie/model/movie.dart';
import 'package:demo_movie/model/user_data.dart';
import 'package:demo_movie/remote/server_api.dart';

class Repository {
  final ServerAPI _serverAPI;

  Repository(this._serverAPI);

  Future<UserData> signIn(String username, String password) async {
    final c = Completer<UserData>();
    _serverAPI.signIn(username, password).then((response) {
      var user = UserData.fromJson(response.data);
      c.complete(user);
    });
    return c.future;
  }

  Future<List<Movie>> getListMovie() async {
    final c = Completer<List<Movie>>();
    _serverAPI.getListMovie().then((response) {
      var movies = Movie.parseMovieList(response.data);
      c.complete(movies);
    });
    return c.future;
  }
}
