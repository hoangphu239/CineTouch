import 'package:demo_movie/constants.dart';
import 'package:demo_movie/ui/details/components/cast_card.dart';
import 'package:flutter/material.dart';

class CastAndCrew extends StatelessWidget {
  const CastAndCrew({Key? key, required this.casts}) : super(key: key);
  final List casts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cast & Crew",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: casts.length,
              itemBuilder: (context, index) => CastCard(
                cast: casts[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
