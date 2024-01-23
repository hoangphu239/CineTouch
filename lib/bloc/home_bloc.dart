import 'package:demo_movie/base/base_bloc.dart';
import 'package:demo_movie/event/event_load_movie_success.dart';
import 'package:demo_movie/repo/repository.dart';

class HomeBloc extends BaseBloc {
  final Repository _repo;
  HomeBloc(this._repo);

  void getListMovie() async {
    loadingSink.add(true);
    await _repo.getListMovie().then((movies) {
      loadingSink.add(false);
      sink.add(LoadMovieSuccess(movies));
    });
  }
}