import 'package:demo_movie/constants.dart';
import 'package:demo_movie/ui/welcome/component/background.dart';
import 'package:demo_movie/ui/welcome/component/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to TOUCH CINE",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: kPrimaryColor),
            ),
            SizedBox(height: size.height *0.03,),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.4,
            ),
            SizedBox(height: size.height *0.03,),
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            RoundedButton(
              text: 'SIGN UP',
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.pushNamed(context, '/signup');
              },
            ),
          ],
        ),
      ),
    );
  }
}
