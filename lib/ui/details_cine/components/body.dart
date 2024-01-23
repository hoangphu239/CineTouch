import 'package:demo_movie/ui/details_cine/components/bottom_button.dart';
import 'package:demo_movie/ui/details_cine/components/images_and_icons.dart';
import 'package:demo_movie/ui/details_cine/components/info.dart';
import 'package:flutter/material.dart';


class BodyDetailsCine extends StatelessWidget {
  const BodyDetailsCine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ImagesAndIcons(),
          Info(
            name: "CGV Sư Vạn Hạnh",
            address: "Tầng 6, Vạn Hạnh Mall, 11 Đ. Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh",
          ),
          BottomButton(),
        ],
      ),
    );
  }
}
