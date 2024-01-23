import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/show_date.dart';
import 'package:flutter/material.dart';

class DateTimeCard extends StatefulWidget {
  const DateTimeCard({Key? key, required this.showTime}) : super(key: key);
  final ShowDate showTime;

  @override
  State<DateTimeCard> createState() => _DateTimeCardState();
}

class _DateTimeCardState extends State<DateTimeCard> {
  bool _isSelect = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelect = !_isSelect;
        });
      },
      child: Container(
        width: 80,
        margin: const EdgeInsets.only(right: kDefaultPadding / 2),
        decoration: BoxDecoration(
          color: _isSelect ? primaryDarkColor : const Color(0xFFB0A299),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.showTime.day,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              widget.showTime.date,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
