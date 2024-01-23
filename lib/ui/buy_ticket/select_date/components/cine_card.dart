import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/cine.dart';
import 'package:demo_movie/ui/buy_ticket/select_date/components/time_card.dart';
import 'package:flutter/material.dart';

class CineCard extends StatefulWidget {
  const CineCard({Key? key, required this.cine}) : super(key: key);
  final Cine cine;

  @override
  State<CineCard> createState() => _CineCardState();
}

class _CineCardState extends State<CineCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: kDefaultPadding / 2, right: kDefaultPadding /2, bottom: kDefaultPadding /4),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFB0A299),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              widget.cine.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.cine.address,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 8 ,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: kDefaultPadding),
            height: 35,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.cine.times.length,
              itemBuilder: (context, index) => TimeCard(
                time: widget.cine.times[index],
                index: index,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
