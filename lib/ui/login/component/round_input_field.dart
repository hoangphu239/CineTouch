import 'package:demo_movie/constants.dart';
import 'package:demo_movie/ui/login/component/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundInputField extends StatelessWidget {
  const RoundInputField({Key? key, required this.hintText, required this.icon, required this.controller, this.isPwdTextField = false}) : super(key: key);
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final bool isPwdTextField;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        obscureText: isPwdTextField,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.black26),
            icon: Icon(icon, color: kPrimaryColor,),
            suffixIcon: isPwdTextField? const Icon(Icons.visibility, color: kPrimaryColor,): null,
            border: InputBorder.none,
            focusedBorder: InputBorder.none
        ),
      ),
    );
  }
}