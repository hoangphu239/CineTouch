import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/signup_top.png",
                width: size.width * 0.35),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset("assets/images/main_bottom.png",
                width: size.width * 0.18),
          ),
          child,
        ],
      ),
    );
  }
}
