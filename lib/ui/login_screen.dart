// import 'package:demo_movie/base/base_event.dart';
// import 'package:demo_movie/event/event_login_success.dart';
// import 'package:demo_movie/widget/loading_task.dart';
// import 'package:demo_movie/bloc/signin_bloc.dart';
// import 'package:flutter/material.dart';
//
// class SignInScreen extends StatelessWidget {
//   const SignInScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "CINE STAR",
//           style: TextStyle(
//               color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.deepOrangeAccent,
//       ),
//       body: const BuildBody(),
//     );
//   }
// }
//
// class BuildBody extends StatefulWidget {
//   const BuildBody({Key? key}) : super(key: key);
//
//   @override
//   State<BuildBody> createState() => _BuildBodyState();
// }
//
// class _BuildBodyState extends State<BuildBody> {
//   final usernameController = TextEditingController(text: "kminchelle");
//   final passwordController = TextEditingController(text: "0lelplR");
//   final bloc = SignInBloc();
//
//   handleEvent(BaseEvent event) {
//     if (event is LoginSuccess) {
//       Future.delayed(const Duration(seconds: 2), () {
//         Navigator.pushReplacementNamed(context, '/home');
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return LoadingTask(
//       bloc: bloc,
//       child: Center(
//         child: Container(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 controller: usernameController,
//                 decoration: const InputDecoration(
//                   icon: Icon(Icons.email, color: Colors.deepOrangeAccent,),
//                   labelText: "Nhập username",
//                 ),
//                 keyboardType: TextInputType.text,
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               TextField(
//                 controller: passwordController,
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   icon: Icon(Icons.password, color: Colors.deepOrangeAccent,),
//                   labelText: "Nhập password",
//                 ),
//                 keyboardType: TextInputType.text,
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   bloc.loadingSink.add(true);
//                   var user = await bloc.signIn();
//                   if(user.token.isNotEmpty) {
//                     Future.delayed(const Duration(seconds: 2), () {
//                       bloc.loadingSink.add(false);
//                       Navigator.pushReplacementNamed(context, '/home');
//                     });
//                   }
//                 },
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
//                     foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                         const RoundedRectangleBorder(
//                             borderRadius: BorderRadius.all(Radius.circular(10)),
//                             side: BorderSide(color: Colors.red)))),
//                 child: const Text(
//                   "Đăng Nhập", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
