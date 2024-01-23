import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/food.dart';
import 'package:demo_movie/ui/buy_ticket/select_food/components/food_card.dart';
import 'package:flutter/material.dart';

class ListFoodWidget extends StatelessWidget {
  const ListFoodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding / 2,
          vertical: kDefaultPadding,
        ),
        width: double.infinity,
        color: Colors.black,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 6,
          itemBuilder: (context, index) => FoodCard(
            food: showFoodData[index],
          ),
        ),
      ),
    );
  }
}
