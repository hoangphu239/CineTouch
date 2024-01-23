import 'package:demo_movie/model/show_time.dart';

class Cine {
  final String name;
  final String address;
  final String image;
  final double lat;
  final double lon;
  final List<ShowTime> times;

  Cine({
    required this.name,
    required this.address,
    required this.image,
    required this.lat,
    required this.lon,
    required this.times,
  });
}

List<Cine> showCineData = [
  Cine(
    name: "CGV Trường Sơn (CGV CT Plaza)",
    address: "60A Trường Sơn, Phường 2, Tân Bình, Thành phố Hồ Chí Minh",
    image: "https://lh3.googleusercontent.com/p/AF1QipPAk8r-_vE39hnoms4T8yoOozoCfQYxh98zg9-N=s680-w680-h510",
    lat: 10.813234725677017,
    lon: 106.6661135037613,
    times: showTimesData,
  ),
  Cine(
    name: "CGV Sư Vạn Hạnh",
    address: "Tầng 6, Vạn Hạnh Mall, 11 Đ. Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh",
    image: "https://lh3.googleusercontent.com/p/AF1QipOmdxKCAlfJHfn5QULYjaZI8p2humoWTs-6EGCc=s680-w680-h510",
    lat: 10.77067785238378,
    lon: 106.67004595869084,
    times: showTimesData,
  ),
  Cine(
    name: "CGV Lý Chính Thắng",
    address: "83 Lý Chính Thắng, Phường 8, Quận 3, Thành phố Hồ Chí Minh",
    image: "https://lh3.googleusercontent.com/p/AF1QipM3oLcGxM3LOH083YApFSPJaJYZXFQfRLGim-RC=s680-w680-h510",
    lat: 10.790324372834498,
    lon: 106.68861813225749,
    times: showTimesData,
  ),
  Cine(
    name: "CGV Liberty Citypoint",
    address: "Khách sạn Liberty Citypoint, Pasteur, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh",
    image: "https://lh3.googleusercontent.com/p/AF1QipPiuVtotLiBmsrU6uRzrXiHjALdJesTxS2fGGw=s680-w680-h510",
    lat: 10.776170010590457,
    lon: 106.69388740918826,
    times: showTimesData,
  ),
  Cine(
    name: "CGV Saigonres Nguyễn Xí",
    address: "Saigonres Plaza, Tầng 4-5,Saigonres Plaza 188, 79-81 Nguyễn Xí, Phường 26, Bình Thạnh, Thành phố Hồ Chí Minh",
    image: "https://images.toplist.vn/images/800px/cgv-saigonres-nguyen-xi-901228.jpg",
    lat: 10.818185025970967,
    lon: 106.71166468329743,
    times: showTimesData,
  ),
  Cine(
    name: "CGV Thảo Điền Pearl",
    address: "12 Đ. Quốc Hương, Thảo Điền, Quận 2, Thành phố Hồ Chí Minh",
    image: "https://www.cgv.vn/media/site/cache/1/980x415/b58515f018eb873dafa430b6f9ae0c1e/t/h/thaodien-3_1.png",
    lat: 10.801522117018882,
    lon: 106.73384493289323,
    times: showTimesData,
  ),
];
