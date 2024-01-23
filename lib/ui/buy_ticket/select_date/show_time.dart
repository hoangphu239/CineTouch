import 'package:demo_movie/model/movie_trends.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class ShowTimeScreen extends StatelessWidget {
  const ShowTimeScreen({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        movie: movie,
      ),
    );
  }
}
