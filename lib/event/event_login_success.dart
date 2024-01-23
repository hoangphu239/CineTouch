import 'package:demo_movie/base/base_event.dart';
import 'package:demo_movie/model/movie.dart';
import 'package:demo_movie/model/user_data.dart';

class LoginSuccess extends BaseEvent {
  late UserData user;

  LoginSuccess(this.user);
}