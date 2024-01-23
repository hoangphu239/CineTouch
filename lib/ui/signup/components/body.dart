import 'package:demo_movie/ui/login/component/already_account.dart';
import 'package:demo_movie/ui/login/component/round_input_field.dart';
import 'package:demo_movie/ui/signup/components/background.dart';
import 'package:demo_movie/ui/signup/components/divider.dart';
import 'package:demo_movie/ui/signup/components/login_social.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  final usernameController = TextEditingController(text: "kminchelle");
  final passwordController = TextEditingController(text: "0lelplR");


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SIGNUP',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height *0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height *0.03),
            RoundInputField(
              hintText: 'Your email',
              icon: Icons.person,
              controller: usernameController,
            ),
            RoundInputField(
              isPwdTextField: true,
              hintText: 'Your password',
              icon: Icons.lock,
              controller: passwordController,
            ),
            SizedBox(height: size.height *0.03),
            AlreadyAccount(
              login: false,
              press: () {
                Navigator.pop(context);
              },
            ),
            const OrDivider(),
            const LoginSocial(),
          ],
        ),
      ),
    );
  }
}
