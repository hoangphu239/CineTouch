import 'package:demo_movie/model/cine.dart';
import 'package:demo_movie/ui/buy_ticket/select_date/components/cine_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectCineWidget extends StatefulWidget {
  const SelectCineWidget({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  State<SelectCineWidget> createState() => _SelectCineWidgetState();
}

class _SelectCineWidgetState extends State<SelectCineWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        itemCount: showCineData.length,
        itemBuilder: (context, index) => CineCard(
          cine: showCineData[index],
        ),
      ),
    );
  }
}
