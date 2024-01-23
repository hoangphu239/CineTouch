import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';

class SurchargeWidget extends StatelessWidget {
  const SurchargeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2, horizontal: kDefaultPadding / 2),
      color: kSecondaryColor,
      child: const Row(
        children: [
          Image(
            image: AssetImage("assets/images/popcorn.png"),
            height: 40,
            width: 40,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "Áp dụng giá Lễ, Tết cho một số sản phẩm bắp nước\n đối với các giao dịch có suất chiếu vào ngày Lễ, tết",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
