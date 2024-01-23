import 'package:demo_movie/constants.dart';
import 'package:demo_movie/ui/home/components/genres_card.dart';
import 'package:flutter/material.dart';

class Genres extends StatelessWidget {
  Genres({Key? key}) : super(key: key);
  List<String> genres = [
    "Action",
    "Crime",
    "Comedy",
    "Drama",
    "Horror",
    "Animation"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenresCard(
          genres: genres[index],
        ),
      ),
    );
  }
}