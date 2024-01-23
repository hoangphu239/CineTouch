import 'package:demo_movie/ui/buy_ticket/my_ticket/component/header.dart';
import 'package:demo_movie/ui/buy_ticket/my_ticket/component/info_movie.dart';
import 'package:demo_movie/ui/buy_ticket/my_ticket/component/note.dart';
import 'package:demo_movie/ui/buy_ticket/my_ticket/component/photo_ticket.dart';
import 'package:demo_movie/ui/buy_ticket/my_ticket/component/qr_code.dart';
import 'package:flutter/material.dart';

class BodyMyTicket extends StatelessWidget {
  const BodyMyTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HeaderWidget(),
          InfoMovie(),
          PhotoTicket(),
          QRCode(),
          Note(),
        ],
      ),
    );
  }
}
