import 'package:flutter/material.dart';
import 'components/body.dart';

class ShowFoodScreen extends StatelessWidget {
  const ShowFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
