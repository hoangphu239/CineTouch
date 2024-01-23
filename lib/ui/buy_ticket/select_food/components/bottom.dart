import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: Colors.white,
      padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 8),
      child: Row(
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  text: "THE MARVELS",
                ),
                TextSpan(
                  style: TextStyle(
                    fontSize: 15,
                    color: kTextLightColor,
                  ),
                  text: "\n2D Phụ Đề Việt",
                ),
                TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  text: "\n249.818 đ  ",
                ),
                TextSpan(
                  text: "2 ghế",
                  style: TextStyle(
                    color: kTextLightColor,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/payment");
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding/3, horizontal: 14),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: kBgSelectSeatColor,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: kTextLightColor,
                ),
              ),
              child: const Text(
                "Thanh toán",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
