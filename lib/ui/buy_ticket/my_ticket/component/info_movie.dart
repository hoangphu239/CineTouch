import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';

class InfoMovie extends StatelessWidget {
  const InfoMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.2),
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "AVENGERS: ENDGAME",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      blurRadius: 10,
                      color: const Color(0xFF12153D).withOpacity(0.2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                margin: const EdgeInsets.only(left: 10),
                child: const Text(
                  "C18",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          const Text(
            "Friday, 26 April, 2023",
            style: TextStyle(
              color: Color(0xFF4E463A),
              fontSize: 18,
            ),
          ),
          const Text(
            "19:30 ~ 22:32",
            style: TextStyle(
              color: Color(0xFF4E463A),
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Rạp CGV",
            style: TextStyle(
                color: Color(0xFFB0A299),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            "CGV Sư Vạn Hạnh",
            style: TextStyle(
              color: Color(0xFF4E463A),
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Text(
                "Ghế",
                style: TextStyle(
                    color: Color(0xFFB0A299),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "Phòng Chiếu",
                style: TextStyle(
                    color: Color(0xFFB0A299),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                "C4, C3",
                style: TextStyle(color: Color(0xFF4E463A), fontSize: 18),
              ),
              Spacer(),
              Text(
                "Cinema 3",
                style: TextStyle(
                  color: Color(0xFF4E463A),
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
