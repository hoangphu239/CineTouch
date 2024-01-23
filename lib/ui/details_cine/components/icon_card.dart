import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class IconCard extends StatelessWidget {
  const IconCard({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: size.height * 0.03, bottom: size.height * 0.01),
            width: 62,
            height: 62,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 20,
                  color: greenColor.withOpacity(0.23),
                ),
                BoxShadow(
                  offset: const Offset(-15, -15),
                  blurRadius: 20,
                  color: greenColor.withOpacity(0.23),
                ),
              ],
            ),
            child: IconButton(
              icon: Image.asset(image, color: greenColor, height: 35, width: 35,),
              onPressed: () {},
            ))
      ],
    );
  }
}
