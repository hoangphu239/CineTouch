import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';

import '../../../../model/order.dart';

class SelectSeatWidget extends StatefulWidget {
  const SelectSeatWidget({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  State<SelectSeatWidget> createState() => _SelectSeatWidgetState();
}

class _SelectSeatWidgetState extends State<SelectSeatWidget> {
  final List<int> _seats = [];
  final maxSeat = 49;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.5,
      ),
      child: SizedBox(
        height: widget.size.height * 0.5,
        child: Row(
          children: [
            Container(
              width: 55,
              margin: const EdgeInsets.only(top: 3),
              child: ListView.builder(
                itemCount: showListRow.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      bottom: index == showListRow.length - 2 ? 24 : 14,
                    ),
                    height: 34,
                    width: 34,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.3),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        showListRow[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7,
                    ),
                    itemCount: maxSeat,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          GestureDetector(
                            child: Image.asset(
                              "assets/images/seat.png",
                              height: 40,
                              width: 40,
                              color: _fillColor(index),
                            ),
                            onTap: () {
                              setState(() {
                                _bookSeat(index);
                              });
                            },
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 15,
                            ),
                            child: Text(
                              (index % 7 + 1).toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  Container(
                    height: 60,
                    margin: const EdgeInsets.only(left: 5),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/double_seat.png",
                                height: 70,
                                width: 100,
                                color: _fillColor(maxSeat + 1 + index,
                                    doubleSeat: true),
                              ),
                              onTap: () {
                                setState(() {
                                  _bookSeat(maxSeat + 1 + index);
                                });
                              },
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                top: kDefaultPadding * 0.7,
                                left: kDefaultPadding * 2.1,
                              ),
                              child: Text(
                                "0  ${1 + index}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _bookSeat(int index) {
    for (var item in _seats) {
      if (item == index) {
        _seats.remove(item);
        return;
      }
    }
    _seats.add(index);
  }

  Color _fillColor(int index, {bool doubleSeat = false}) {
    Color color;
    if (doubleSeat) {
      color = Colors.redAccent;
    } else {
      color = Colors.white;
    }
    for (var item in _seats) {
      if (item == index) color = Colors.green;
    }
    return color;
  }
}
