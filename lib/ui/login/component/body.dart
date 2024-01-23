import 'package:demo_movie/base/base_event.dart';
import 'package:demo_movie/bloc/signin_bloc.dart';
import 'package:demo_movie/event/event_login_success.dart';
import 'package:demo_movie/repo/repository.dart';
import 'package:demo_movie/ui/login/component/already_account.dart';
import 'package:demo_movie/ui/login/component/background.dart';
import 'package:demo_movie/ui/login/component/round_input_field.dart';
import 'package:demo_movie/ui/welcome/component/rounded_button.dart';
import 'package:demo_movie/widget/bloc_listener.dart';
import 'package:demo_movie/widget/loading_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  final usernameController = TextEditingController(text: "kminchelle");
  final passwordController = TextEditingController(text: "0lelplR");

  handleEvent(BaseEvent event) {
    if (event is LoginSuccess) {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Provider.value(
      value: SignInBloc(Provider.of<Repository>(context)),
      child: Consumer<SignInBloc>(
        builder: (context, bloc, child) {
          return BlocListener<SignInBloc>(
            listener: handleEvent,
            child: LoadingTask(
              bloc: bloc,
              child: Background(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: size.height *0.03),
                      SvgPicture.asset(
                        "assets/icons/login.svg",
                        height: size.height * 0.35,
                      ),
                      SizedBox(height: size.height *0.03),
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
                      SizedBox(height: size.height *0.03),
                      RoundedButton(
                        text: "LOGIN",
                        press: () {
                          bloc.signIn(usernameController.text, passwordController.text);
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
        },
      ),
    );
  }
}
