import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/movie_trends.dart';
import 'package:demo_movie/ui/buy_ticket/select_date/components/datetime_card.dart';
import 'package:flutter/material.dart';


class SelectDateWidget extends StatelessWidget {
  const SelectDateWidget({Key? key, required this.size, required this.movie}) : super(key: key);
  final Movie movie;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Chọn ngày chiếu",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movie.showDate.length,
              itemBuilder: (context, index) => DateTimeCard(
                showTime: movie.showDate[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
