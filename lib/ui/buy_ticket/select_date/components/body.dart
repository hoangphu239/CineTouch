import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/movie_trends.dart';
import 'package:demo_movie/ui/buy_ticket/select_date/components/banner.dart';
import 'package:demo_movie/ui/buy_ticket/select_date/components/select_cine_widget.dart';
import 'package:demo_movie/ui/buy_ticket/select_date/components/select_date.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey.withOpacity(0.1),
      child: Column(
        children: [
          BannerWidget(size: size, movie: movie),
          SelectDateWidget(size: size, movie: movie),
          SelectCineWidget(size: size),
          const SizedBox(height: 14),
        ],
      ),
    );
  }
}
