import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/food.dart';
import 'package:demo_movie/ui/buy_ticket/select_payment/components/combo_card.dart';
import 'package:flutter/material.dart';

class FoodInfoWidget extends StatelessWidget {
  const FoodInfoWidget({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: kDefaultPadding / 2,
          ),
          width: double.infinity,
          color: Colors.grey.withOpacity(0.3),
          padding: const EdgeInsets.only(
            left: kDefaultPadding / 2,
            top: kDefaultPadding,
            bottom: kDefaultPadding / 2,
          ),
          child: const Text(
            "THÊM COMBO/ BẮP NƯỚC:",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 90,
          color: Colors.grey.withOpacity(0.3),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) => ComboCard(
              food: showFoodData[index],
              size: size,
            ),
          ),
        ),
      ],
    );
  }
}
