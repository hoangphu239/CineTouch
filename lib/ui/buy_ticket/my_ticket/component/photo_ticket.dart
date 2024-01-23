import 'package:flutter/material.dart';

class PhotoTicket extends StatelessWidget {
  const PhotoTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        "assets/images/photo_ticket.png",
      width: double.infinity,
      height: 90,
      fit: BoxFit.fitHeight,
    );
  }
}
