import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';

class GenresCard extends StatelessWidget {
  final String genres;
  final Color color;

  const GenresCard({Key? key, required this.genres, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: kDefaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey.withOpacity(0.6),
        ),
      ),
      child: Text(
        genres,
        style: TextStyle(
          color: color.withOpacity(0.8),
          fontSize: 16,
        ),
      ),
    );
  }
}
