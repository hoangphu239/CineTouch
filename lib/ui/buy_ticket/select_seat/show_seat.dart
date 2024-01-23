import 'package:flutter/material.dart';
import 'components/body.dart';

class ShowSeatScreen extends StatelessWidget {
  const ShowSeatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
