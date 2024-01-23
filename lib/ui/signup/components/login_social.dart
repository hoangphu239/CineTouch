import 'package:demo_movie/constants.dart';
import 'package:demo_movie/ui/signup/components/icons_social.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginSocial extends StatelessWidget {
  const LoginSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconSocial(
            icon: "assets/icons/facebook.svg",
            press: () {},
          ),
          IconSocial(
            icon: "assets/icons/twitter.svg",
            press: () {},
          ),
          IconSocial(
            icon: "assets/icons/google-plus.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
