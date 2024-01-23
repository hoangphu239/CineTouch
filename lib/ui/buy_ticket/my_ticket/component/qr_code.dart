import 'package:flutter/material.dart';

class QRCode extends StatelessWidget {
  const QRCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/qr_code.png",
      width: double.infinity,
      height: 120,
    );
  }
}
