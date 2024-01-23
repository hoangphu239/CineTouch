import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';

class AgreePaymentWidget extends StatelessWidget {
  const AgreePaymentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: 14, right: 14, top: 14, bottom: kDefaultPadding * 1.2),
      width: double.infinity,
      color: Colors.grey.withOpacity(0.3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  text: "Tôi đồng ý với ",
                ),
                TextSpan(
                  style: TextStyle(
                    fontSize: 17,
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                  text: "Điều Khoản Sử Dụng",
                ),
                TextSpan(
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  text: " của CGV",
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: kDefaultPadding,
                left: kDefaultPadding / 2,
                right: kDefaultPadding / 2),
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kBgSelectSeatColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/show_ticket");
              },
              child: const Text(
                "Tôi đồng ý và Tiếp tục",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
