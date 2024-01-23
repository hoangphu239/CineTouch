import 'package:demo_movie/constants.dart';
import 'package:demo_movie/ui/details_cine/components/icon_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImagesAndIcons extends StatelessWidget {
  const ImagesAndIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: size.height * 0.78,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: kDefaultPadding),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30,),
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultPadding * 1.5,
                    ),
                    const IconCard(image: "assets/images/ic_room.png"),
                    const Text(
                      "10 Phòng",
                      style: TextStyle(
                        color: greenColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const IconCard(image: "assets/images/ic_price.png"),
                    const Text(
                      "120k ~ 250k",
                      style: TextStyle(
                        color: greenColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const IconCard(image: "assets/images/ic_calendar.png"),
                    const Text(
                      "Lịch chiếu",
                      style: TextStyle(
                        color: greenColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const IconCard(image: "assets/images/ic_call.png"),
                    const Text(
                      "Gọi",
                      style: TextStyle(
                        color: greenColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: size.width * 0.7,
              height: size.height * 0.8,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    color: greenColor.withOpacity(0.29),
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                  )
                ],
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                  image: NetworkImage(
                      "https://lh3.googleusercontent.com/p/AF1QipOmdxKCAlfJHfn5QULYjaZI8p2humoWTs-6EGCc=s680-w680-h510"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
