import 'package:demo_movie/cubit/auth_cubit/auth_cubit.dart';
import 'package:demo_movie/network/my_dio.dart';
import 'package:get_it/get_it.dart';


final sl = GetIt.instance;

Future<void> init() async {

  sl.registerLazySingleton<MyDio>(
    () => MyDio(),
  );
  sl.registerLazySingleton<AuthCubit>(
    () => AuthCubit(),
  );

}
