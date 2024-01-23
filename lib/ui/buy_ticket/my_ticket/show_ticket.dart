import 'package:demo_movie/ui/buy_ticket/my_ticket/component/body.dart';
import 'package:flutter/material.dart';


class ShowTicketScreen extends StatelessWidget {
  const ShowTicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BodyMyTicket(),
      ),
    );
  }
}
