import 'package:demo_movie/model/show_time.dart';

class Payment {
  final String image;
  final String name;

  Payment({
    required this.image,
    required this.name,
  });
}

List<Payment> showPaymentData = [
  Payment(
    image: "assets/images/payment_1.png",
    name: "ATM card (Thẻ nội địa)",
  ),
  Payment(
    image: "assets/images/payment_2.png",
    name: "Thẻ quốc tế (Visa, Master, Amex, JCB)",
  ),
  Payment(
    image: "assets/images/payment_3.png",
    name: "MoMo - Nhập MMCGV - 5k/bill, Vé 9K Bạn Mới",
  ),
  Payment(
    image: "assets/images/payment_4.png",
    name: "ZaloPay: Bạn Mới vé 14K - Bạn Thân vé 84K",
  ),
  Payment(
    image: "assets/images/payment_5.png",
    name: "VNPAY",
  ),
];
