import 'package:demo_movie/base/base_event.dart';
import 'package:demo_movie/model/movie.dart';

class LoadMovieSuccess extends BaseEvent {

  List<Movie> movies;

  LoadMovieSuccess(this.movies);
}