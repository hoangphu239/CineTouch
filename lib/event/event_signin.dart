import 'package:demo_movie/base/base_event.dart';

class SignInEvent extends BaseEvent {
  final String username;
  final String password;

  SignInEvent(this.username, this.password);
}