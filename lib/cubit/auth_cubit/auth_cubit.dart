import 'package:demo_movie/model/user_data.dart';
import 'package:demo_movie/repo/login_repository.dart';
import 'package:demo_movie/repo/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(context) => BlocProvider.of<AuthCubit>(context);

  void login({
    required String username,
    required String password,
  }) async {
    emit(LoginLoadingState());
    UserData userData =
    await LoginRepository().signIn(username, password);
    if (userData != null) {
      Future.delayed(const Duration(seconds: 2), () {
        emit(LoginSuccessState());
      });
    } else {
      emit(LoginFailureState("Login fail"));
    }
  }
}
