import 'dart:ui';

import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/movie_trends.dart';
import 'package:demo_movie/ui/home/components/video_player_screen.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key, required this.size, required this.movie})
      : super(key: key);
  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.4,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.4 - 65,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(movie.poster),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                color: Colors.grey.withOpacity(0.1),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: size.width - 20,
              height: 135,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    blurRadius: 30,
                    color: const Color(0xFF12153D).withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      movie.poster,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Đất Rừng Phương Nam",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Thời lượng: 120 phút",
                              style: TextStyle(
                                color: Color(0xFF737599),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Tình cảm, Phiêu lưu",
                              style: TextStyle(
                                color: Color(0xFF737599),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                ),
                                padding: const EdgeInsets.fromLTRB(8, 2, 5, 2),
                                margin: const EdgeInsets.only(top: 3),
                                child: const Text(
                                  "2D",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.deepOrangeAccent,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0, 5),
                                      blurRadius: 10,
                                      color: const Color(0xFF12153D)
                                          .withOpacity(0.2),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding:
                                    const EdgeInsets.fromLTRB(10, 3, 10, 3),
                                margin: const EdgeInsets.only(top: 3, left: 7),
                                child: const Text(
                                  "K",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VideoPlayerScreen(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.play_circle_outline,
                          size: 48,
                          color: primaryDarkColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SafeArea(child: BackButton()),
        ],
      ),
    );
  }
}
