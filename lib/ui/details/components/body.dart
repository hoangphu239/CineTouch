import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/movie_trends.dart';
import 'package:demo_movie/ui/details/components/cast_and_crew.dart';
import 'package:demo_movie/ui/details/components/genres.dart';
import 'package:demo_movie/ui/details/components/header_rating.dart';
import 'package:demo_movie/ui/details/components/title_and_duration.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderRating(
            movie: movie,
            size: size,
          ),
          TitleAndDuration(
            movie: movie,
          ),
          Genres(movie: movie),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Pilot Summary",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Text(
              movie.plot,
              style: const TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(
            casts: movie.cast,
          ),
        ],
      ),
    );
  }
}




