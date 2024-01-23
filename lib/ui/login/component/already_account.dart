import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';

class AlreadyAccount extends StatelessWidget {
  const AlreadyAccount({Key? key, required this.press, this.login = true})
      : super(key: key);
  final VoidCallback press;
  final bool login;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an Account?" : "Already have an Account?",
          style: const TextStyle(color: kPrimaryColor),
        ),
        const SizedBox(width: 5,),
        InkWell(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Login",
            style: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
