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
            child: Image.asset("assets/images/main_top.png",
                width: size.width * 0.35),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset("assets/images/login_bottom.png",
                width: size.width * 0.4),
          ),
          child,
        ],
      ),
    );
  }
}
