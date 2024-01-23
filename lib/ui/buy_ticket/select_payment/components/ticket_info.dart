import 'package:demo_movie/constants.dart';
import 'package:flutter/material.dart';

class TicketInfoWidget extends StatelessWidget {
  const TicketInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: kDefaultPadding / 2,
          ),
          width: double.infinity,
          color: Colors.grey.withOpacity(0.3),
          padding: const EdgeInsets.only(
            left: kDefaultPadding / 2,
            top: kDefaultPadding,
            bottom: kDefaultPadding / 2,
          ),
          child: const Text(
            "THÔNG TIN VÉ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
              left: kDefaultPadding / 2,
              right: kDefaultPadding / 2,
              top: 15,
              bottom: 5),
          child: const Row(
            children: [
              Text(
                "Số Lượng",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Text(
                "2",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 0.25,
          color: Colors.grey,
        ),
        Container(
          padding: const EdgeInsets.only(
              left: kDefaultPadding / 2,
              right: kDefaultPadding / 2,
              top: 10,
              bottom: 5),
          child: const Row(
            children: [
              Text(
                "Tổng",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Text(
                "249.818 đ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
