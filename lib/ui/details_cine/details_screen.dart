import 'package:demo_movie/ui/details_cine/components/body.dart';
import 'package:flutter/material.dart';

class DetailsCineScreen extends StatelessWidget {
  const DetailsCineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyDetailsCine(),
    );
  }
}
