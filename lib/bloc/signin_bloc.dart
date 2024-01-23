import 'package:demo_movie/base/base_bloc.dart';
import 'package:demo_movie/event/event_login_success.dart';
import 'package:demo_movie/repo/repository.dart';

class SignInBloc extends BaseBloc {
  final Repository _repo;
  SignInBloc(this._repo);

  void signIn(String username, String password) async {
    loadingSink.add(true);
    await _repo.signIn(username, password).then((user) {
      Future.delayed(const Duration(seconds: 1), () {
        loadingSink.add(false);
        sink.add(LoginSuccess(user));
      });
    });
  }
}
