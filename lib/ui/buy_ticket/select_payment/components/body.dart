import 'package:demo_movie/ui/buy_ticket/select_payment/components/agree_payment.dart';
import 'package:demo_movie/ui/buy_ticket/select_payment/components/food_info.dart';
import 'package:demo_movie/ui/buy_ticket/select_payment/components/header.dart';
import 'package:demo_movie/ui/buy_ticket/select_payment/components/movie_info.dart';
import 'package:demo_movie/ui/buy_ticket/select_payment/components/payment_method.dart';
import 'package:demo_movie/ui/buy_ticket/select_payment/components/ticket_info.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderWidget(),
          const MovieInfoWidget(),
          const TicketInfoWidget(),
          FoodInfoWidget(size: size,),
          const PaymentMethodWidget(),
          const AgreePaymentWidget(),
        ],
      ),
    );
  }
}
