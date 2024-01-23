import 'package:demo_movie/bloc/observer.dart';
import 'package:demo_movie/di/di.dart';
import 'package:demo_movie/ui/buy_ticket/my_ticket/show_ticket.dart';
import 'package:demo_movie/ui/buy_ticket/select_date/show_time.dart';
import 'package:demo_movie/ui/buy_ticket/select_food/show_food.dart';
import 'package:demo_movie/ui/buy_ticket/select_payment/show_payment.dart';
import 'package:demo_movie/ui/buy_ticket/select_seat/show_seat.dart';
import 'package:demo_movie/ui/details/details_screen.dart';
import 'package:demo_movie/ui/details_cine/details_screen.dart';
import 'package:demo_movie/ui/home/home_screen.dart';
import 'package:demo_movie/ui/login/login_screen.dart';
import 'package:demo_movie/ui/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const LoginScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/home': (context) => const HomeScreen(),
        '/show_seat': (context) => const ShowSeatScreen(),
        '/show_food': (context) => const ShowFoodScreen(),
        '/payment': (context) => const ShowPaymentScreen(),
        '/details_cine': (context) => const DetailsCineScreen(),
        '/show_ticket': (context) => const ShowTicketScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
