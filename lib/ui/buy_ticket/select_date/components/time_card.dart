import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/show_time.dart';
import 'package:demo_movie/ui/buy_ticket/select_seat/show_seat.dart';
import 'package:flutter/material.dart';

class TimeCard extends StatefulWidget {
  const TimeCard({Key? key, required this.time, required this.index})
      : super(key: key);
  final ShowTime time;
  final int index;

  @override
  State<TimeCard> createState() => _TimeCardState();
}

class _TimeCardState extends State<TimeCard> {
  int selectIndex = -1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            selectIndex = widget.index;
            Future.delayed(const Duration(milliseconds: 500), () {
              Navigator.pushNamed(context, "/show_seat");
            });
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        margin: const EdgeInsets.only(right: kDefaultPadding / 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color:
                selectIndex == widget.index ? primaryDarkColor : const Color(0xFFB0A299),
          ),
        ),
        child: Text(
          "${widget.time.hour}:${widget.time.minutes}",
          style: TextStyle(
            color: selectIndex == widget.index ? primaryDarkColor : Colors.black54,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
