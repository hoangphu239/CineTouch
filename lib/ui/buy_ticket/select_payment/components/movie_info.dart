import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';

class MovieInfoWidget extends StatelessWidget {
  const MovieInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding / 4),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 165,
            width: 115,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/poster_1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "THE MARVELS",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  "Phim được phổ biến đến người xem từ đủ 13 tuổi trên (13+)",
                  style: TextStyle(
                    color: kBgSelectSeatColor,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        text: "Thứ 7, 11 Thg 11, 2023",
                      ),
                      TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        text: "\n13:20 ~ 15:30",
                      ),
                      TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        text: "\nCGV Sư Vạn Hạnh",
                      ),
                      TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        text: "\nCinema 5",
                      ),
                      TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        text: "\nSeat: E9, E10",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Text(
                  "Tổng Thanh Toán: 249.818 đ",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
