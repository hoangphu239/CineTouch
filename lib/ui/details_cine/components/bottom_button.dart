import 'package:demo_movie/constants.dart';
import 'package:demo_movie/ui/location_cine/component/map_cine.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: size.width / 2,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
              ),
              color: greenColor,
            ),
            child: const Text(
              'Thông Tin',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MapCineScreen(),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Chỉ Đường',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
