import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/movie_trends.dart';
import 'package:demo_movie/ui/home/components/genres_card.dart';
import 'package:flutter/material.dart';

class Genres extends StatelessWidget {
  const Genres({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: (context, index) => GenresCard(
            genres: movie.genra[index],
            color: kTextLightColor,
          ),
        ),
      ),
    );
  }
}
