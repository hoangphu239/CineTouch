import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/cine.dart';
import 'package:demo_movie/ui/location_cine/component/map_cine.dart';
import 'package:flutter/material.dart';

class FindCineCard extends StatelessWidget {
  const FindCineCard({Key? key, required this.cine}) : super(key: key);
  final Cine cine;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/details_cine");
      },
      child: Container(
        margin: const EdgeInsets.only(left: 15, bottom: 25, right: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  height: 130,
                  fit: BoxFit.cover,
                  imageUrl: cine.image,
                  placeholder: (context, url) =>
                      Image.asset('assets/images/place_holder.png'),
                  errorWidget: (context, url, error) =>
                      Image.asset('assets/images/place_holder.png'),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cine.name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      cine.address,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MapCineScreen(),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.map,
                            color: Colors.blue,
                            size: 18,
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "Xem bản đồ",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
