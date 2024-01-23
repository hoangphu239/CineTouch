import 'package:demo_movie/constants.dart';
import 'package:demo_movie/ui/home/components/categories.dart';
import 'package:demo_movie/ui/home/components/genres.dart';
import 'package:demo_movie/ui/home/components/movie_carousel.dart';
import 'package:flutter/material.dart';

class TrendingScreen extends StatelessWidget {
  const TrendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CategoryList(),
          Genres(),
          const MovieCarousel(),
        ],
      ),
    );
  }
}
