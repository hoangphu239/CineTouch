import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  const Note({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Vui lòng đưa mã số này đến quầy vé CGV để nhận vé của bạn",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF4E463A),
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Tổng Cộng",
            style: TextStyle(
              color: Color(0xFFB0A299),
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const Text(
            "230.000 VNĐ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  style: TextStyle(
                    color: Color(0xFFB0A299),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  text: "Lưu ý:",
                ),
                TextSpan(
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFB0A299),
                  ),
                  text: " CGV không chấp thuận hoàn tiền hoặc đổi vé đã thanh toán trên website hoặc app CGV",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
