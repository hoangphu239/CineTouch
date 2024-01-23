import 'package:demo_movie/model/movie_trends.dart';
import 'package:demo_movie/ui/details/components/body.dart';
import 'package:flutter/material.dart';

class DetailsMovieScreen extends StatelessWidget {
  const DetailsMovieScreen({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(movie: movie)
    );
  }
}
