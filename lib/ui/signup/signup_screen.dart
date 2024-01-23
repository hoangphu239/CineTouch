import 'package:demo_movie/ui/signup/components/body.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Body()
    );
  }
}
