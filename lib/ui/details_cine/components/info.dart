import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key, required this.name, required this.address})
      : super(key: key);

  final String name, address;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            address,
            maxLines: 3,
            style: const TextStyle(
              fontSize: 15,
              color: kTextLightColor,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
