import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';

class CastCard extends StatelessWidget {
  const CastCard({Key? key, required this.cast}) : super(key: key);
  final Map cast;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: kDefaultPadding),
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(cast["image"]))),
          ),
          Text(
            cast['orginalName'],
            maxLines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            cast['movieName'],
            maxLines: 1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: kTextLightColor,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}