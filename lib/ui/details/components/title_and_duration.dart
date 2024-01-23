import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/movie_trends.dart';
import 'package:demo_movie/ui/buy_ticket/select_date/show_time.dart';
import 'package:flutter/material.dart';

class TitleAndDuration extends StatelessWidget {
  const TitleAndDuration({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: const TextStyle(fontSize: 22),
                ),
                const SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  children: [
                    Text(
                      "${movie.year}",
                      style:
                          const TextStyle(fontSize: 13, color: kTextLightColor),
                    ),
                    const SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    const Text(
                      "PG-13",
                      style: TextStyle(fontSize: 13, color: kTextLightColor),
                    ),
                    const SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    const Text(
                      "2h 32min",
                      style: TextStyle(fontSize: 13, color: kTextLightColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 100,
            height: 45,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShowTimeScreen(
                      movie: movie,
                    ),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(kBgSelectSeatColor),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    side: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              child: const Text(
                "Đặt vé",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
