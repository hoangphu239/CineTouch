import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconSocial extends StatelessWidget {
  final String icon;
  final VoidCallback press;

  const IconSocial({Key? key, required this.icon, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: 55,
        height: 55,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
          color: kPrimaryColor,
        ),
        child: SvgPicture.asset(
          icon,
          color: kPrimaryLightColor,
        ),
      ),
    );
  }
}
