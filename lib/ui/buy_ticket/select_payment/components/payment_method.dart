import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/payment.dart';
import 'package:demo_movie/ui/buy_ticket/select_payment/components/payment_card.dart';
import 'package:flutter/material.dart';

class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.grey.withOpacity(0.3),
          padding: const EdgeInsets.only(
            left: kDefaultPadding / 2,
            top: kDefaultPadding,
            bottom: kDefaultPadding / 2,
          ),
          child: const Text(
            "THANH TOÁN",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(thickness: 0.25),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: showPaymentData.length,
            itemBuilder: (context, index) => PaymentCard(
              payment: showPaymentData[index],
            ),
          ),
        ),
      ],
    );
  }
}
