import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/cine.dart';
import 'package:demo_movie/ui/location_cine/component/find_cine_card.dart';
import 'package:flutter/material.dart';

class ListCineScreen extends StatefulWidget {
  const ListCineScreen({Key? key}) : super(key: key);

  @override
  State<ListCineScreen> createState() => _ListCineScreenState();
}

class _ListCineScreenState extends State<ListCineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Image.asset(
          'assets/images/cgv_logo.png',
          height: 40,
          width: 80,
          fit: BoxFit.fitWidth,
        ),
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.only(
          top: kDefaultPadding,
        ),
        child: ListView.builder(
          itemCount: showCineData.length,
          itemBuilder: (context, index) {
            return FindCineCard(cine: showCineData[index]);
          },
        ),
      ),
    );
  }
}
