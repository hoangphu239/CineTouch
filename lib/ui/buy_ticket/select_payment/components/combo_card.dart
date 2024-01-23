import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/food.dart';
import 'package:flutter/material.dart';

class ComboCard extends StatefulWidget {
  const ComboCard({Key? key, required this.food, required this.size}) : super(key: key);
  final Food food;
  final Size size;

  @override
  State<ComboCard> createState() => _CineCardState();
}

class _CineCardState extends State<ComboCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width * 0.8,
      color: Colors.white,
      margin: const EdgeInsets.only(right: 14),
      child: Row(
        children: [
          SizedBox(
            height: 90,
            width: 90,
            child: Image.asset(
              widget.food.image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: kDefaultPadding / 2,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.food.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.food.price,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.add_circle_outline,
              color: Colors.red,
              size: 32,
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
