import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      margin: const EdgeInsets.only(
        top: 5,
      ),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_outlined,
              color: kBgSelectSeatColor,
              size: 34,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: kBgSelectSeatColor,
                  ),
                  text: "CGV ",
                ),
                TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  text: "Sư Vạn Hạnh",
                ),
                TextSpan(
                  style: TextStyle(
                    fontSize: 15,
                    color: kTextLightColor,
                  ),
                  text: "\nCinema 5  ",
                ),
                TextSpan(
                  text: "22:40 ~ 0:50",
                  style: TextStyle(
                    fontSize: 15,
                    color: kTextLightColor,
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
