import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/food.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  const FoodCard({Key? key, required this.food}) : super(key: key);
  final Food food;

  @override
  State<FoodCard> createState() => _CineCardState();
}

class _CineCardState extends State<FoodCard> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 1.2),
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            height: 120,
            width: 120,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.food.name} - ${widget.food.price}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.food.description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding / 5,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if(count >= 1) {
                          setState(
                                () {
                              count--;
                            },
                          );
                        }
                      },
                      child: const Icon(
                        Icons.remove_circle_outline,
                        color: Colors.grey,
                        size: 28,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      count.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            count++;
                          },
                        );
                      },
                      child: const Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
