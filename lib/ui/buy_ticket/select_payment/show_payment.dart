import 'package:flutter/material.dart';
import 'components/body.dart';

class ShowPaymentScreen extends StatelessWidget {
  const ShowPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
