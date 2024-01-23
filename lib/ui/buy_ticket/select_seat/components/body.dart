import 'package:demo_movie/constants.dart';
import 'package:demo_movie/ui/buy_ticket/select_seat/components/background.dart';
import 'package:demo_movie/ui/buy_ticket/select_seat/components/header.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              BackgroundWidget(size: size),
              HeaderWidget(size: size),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Row(
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      text: "THE MARVELS",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: kTextLightColor,
                      ),
                      text: "\n2D Phụ Đề Việt",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      text: "\n249.818 đ  ",
                    ),
                    TextSpan(
                      text: "2 ghế",
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/show_food");
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: kDefaultPadding / 3,
                      horizontal: kDefaultPadding),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: kBgSelectSeatColor,
                    borderRadius: BorderRadius.circular(kDefaultPadding),
                    border: Border.all(
                      color: kTextLightColor,
                    ),
                  ),
                  child: const Text(
                    "Đặt Vé",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
