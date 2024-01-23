import 'package:demo_movie/constants.dart';
import 'package:demo_movie/ui/buy_ticket/select_seat/components/select_seat.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: kDefaultPadding / 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_outlined,
                  color: kBgSelectSeatColor,
                  size: 34,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "SƠ ĐỒ CHỖ NGỒI  |  ",
                      style: TextStyle(
                        fontSize: 20,
                        color: kBgSelectSeatColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      "RẠP ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: kBgSelectSeatColor,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Text(
                        "1",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: kBgSelectSeatColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 45,
          width: size.width * 0.8,
          margin: const EdgeInsets.fromLTRB(
              kDefaultPadding * 2, kDefaultPadding, 0, kDefaultPadding * 0.8),
          child: Image.asset(
            "assets/images/screen.PNG",
            fit: BoxFit.fill,
          ),
        ),
        SelectSeatWidget(
          size: size,
        ),
        Container(
          height: size.height * 0.2,
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 2,
            vertical: 14,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/seat.png",
                        height: 30,
                        width: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "GHẾ THƯỜNG",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/seat.png",
                        height: 30,
                        width: 30,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "GHẾ VIP",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/double_seat.png",
                        height: 40,
                        width: 40,
                        color: Colors.redAccent,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "GHẾ ĐÔI",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: kDefaultPadding / 2,
              ),
              VerticalDivider(
                thickness: 0.5,
                color: Colors.white.withOpacity(0.8),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding / 2,
                    vertical: kDefaultPadding / 6,
                  ),
                  child: Column(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "Khoảng cách từ màn hình đến hàng ghế gần nhất là ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            TextSpan(
                              text: "3m6",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 14,
                        margin: const EdgeInsets.only(
                          top: 14,
                        ),
                        decoration: const BoxDecoration(
                          color: kBgSelectSeatColor,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Màn Hình",
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "  |  Screen",
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        "assets/images/two_direction.png",
                        height: 25,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        height: 35,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 6,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 5),
                              child: Image.asset(
                                "assets/images/seat.png",
                                height: 30,
                                width: 30,
                                color: Colors.white,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
