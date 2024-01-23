import 'package:demo_movie/ui/buy_ticket/select_food/components/bottom.dart';
import 'package:demo_movie/ui/buy_ticket/select_food/components/header.dart';
import 'package:demo_movie/ui/buy_ticket/select_food/components/list_food.dart';
import 'package:demo_movie/ui/buy_ticket/select_food/components/surcharge.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderWidget(),
        SurchargeWidget(),
        ListFoodWidget(),
        BottomWidget(),
      ],
    );
  }
}
