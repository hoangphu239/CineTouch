import 'package:demo_movie/model/show_time.dart';

class Food {
  final String image;
  final String name;
  final String description;
  final String price;

  Food({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });
}

List<Food> showFoodData = [
  Food(
    image: "assets/images/img_5.png",
    name: "MILO COMBO 2023",
    description: "1 milo lớn + 1 nước ngọt siêu lớn + 1 bắp lớn\n* Nhận trong ngày xem phim.\n**Miễn phí đổi vị bắp Caramel...",
    price: "99.000 đ",
  ),
  Food(
    image: "assets/images/img_1.png",
    name: "GARFIELD SINGLE COMBO 2023",
    description: "01 ly nhân vật Garfield (kèm nước)\n* Nhận ngay trong ngày xem phim.\n** Thêm 39,000đ nhận ngay 1 bắp ngọt lớn\n***Mẫu ly phụ thuộc vào số lượng rạp",
    price: "199.000 đ"
  ),
  Food(
    image: "assets/images/img_2.png",
    name: "GARFIELD DOUBLE COMBO 2023",
    description: "02 ly nhân vật Garfield (kèm nước)\n* Nhận ngay trong ngày xem phim.\n** Thêm 39,000đ nhận ngay 1 bắp ngọt lớn\n***Mẫu ly phụ thuộc vào số lượng rạp",
    price: "379.000 đ"
  ),
  Food(
    image: "assets/images/img_3.png",
    name: "GARFIELD TRIPPLE COMBO 2023",
    description: "03 ly nhân vật Garfield (kèm nước)\n* Nhận ngay trong ngày xem phim.\n** Thêm 39,000đ nhận ngay 1 bắp ngọt lớn\n***Mẫu ly phụ thuộc vào số lượng rạp",
    price: "539.000 đ"
  ),
  Food(
    image: "assets/images/img_4.png",
    name: "PREMIUM CGV COMBO 2023",
    description: "1 bắp lớn + 2 nước siêu lớn + 1 snack (tùy thuộc chọn snack: thanh ngữ cốc, cơm cháy hoặc bánh que)\n* Nhận trong ngày xem phim.",
    price: "127.000 đ"
  ),
  Food(
    image: "assets/images/img_6.png",
    name: "PREMIUM MY COMBO 2023",
    description: "1 bắp lớn + 1 nước siêu lớn + 1 Snack tùy chọn: 1 bắp + 1 nước siêu lớn + 1 snack tùy chọn: (thanh ngữ cốc, cơm cháy hoặc bánh que)\n* Nhận ngay trong ngày xem phim.",
    price: "107.000 đ"
  ),
];
