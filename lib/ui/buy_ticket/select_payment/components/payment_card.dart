import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/payment.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatefulWidget {
  const PaymentCard({Key? key, required this.payment}) : super(key: key);
  final Payment payment;

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: GestureDetector(
        onTap: () {
          setState(() {
            visible = !visible;
          });
        },
        child: Row(
          children: [
            SizedBox(
              height: 45,
              width: 45,
              child: Image.asset(
                widget.payment.image,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                widget.payment.name,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Visibility(
              visible: visible,
              child: const Icon(
                Icons.check_rounded,
                color: kBgSelectSeatColor,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
