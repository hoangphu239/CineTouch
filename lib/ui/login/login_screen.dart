import 'package:demo_movie/constants.dart';
import 'package:demo_movie/cubit/auth_cubit/auth_cubit.dart';
import 'package:demo_movie/di/di.dart';
import 'package:demo_movie/helper.dart';
import 'package:demo_movie/ui/login/component/already_account.dart';
import 'package:demo_movie/ui/login/component/round_input_field.dart';
import 'package:demo_movie/ui/welcome/component/rounded_button.dart';
import 'package:demo_movie/widget/scale_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController(text: "kminchelle");
  final passwordController = TextEditingController(text: "0lelplR");
  late AuthCubit authCubit;

  @override
  void initState() {
    authCubit = sl<AuthCubit>();
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    authCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (context) => authCubit,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.03),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  height: size.height * 0.35,
                ),
                SizedBox(height: size.height * 0.03),
                RoundInputField(
                  hintText: 'Your email',
                  icon: Icons.person,
                  controller: usernameController,
                ),
                RoundInputField(
                  isPwdTextField: true,
                  hintText: 'Your password',
                  icon: Icons.lock,
                  controller: passwordController,
                ),
                SizedBox(height: size.height * 0.03),
                BlocConsumer<AuthCubit, AuthState>(
                  // handle callback event
                  listener: (context, state) {
                    if (state is LoginSuccessState) {
                      Navigator.pushReplacementNamed(context, '/home');
                    } else if (state is LoginFailureState) {
                      showToastMsg(
                        msg: state.errorMessage,
                        toastState: ToastStates.error,
                      );
                    }
                  },
                  // refresh UI from state
                  builder: (context, state) {
                    if (state is LoginLoadingState) {
                      return Center(
                        child: ScaleAnimation(
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: const BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: const SpinKitPouringHourGlass(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    } else {
                      return RoundedButton(
                        text: "LOGIN",
                        press: () {
                          authCubit.login(
                            username: usernameController.text,
                            password: passwordController.text,
                          );
                        },
                      );
                    }
                  },
                ),
                AlreadyAccount(
                  press: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
