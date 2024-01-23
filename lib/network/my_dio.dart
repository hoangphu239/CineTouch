import 'package:dio/dio.dart';


class MyDio {
  late Dio dio;

  MyDio() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: 'https://dummyjson.com/',
      receiveDataWhenStatusError: true,
      connectTimeout: 30 * 1000,
      receiveTimeout: 30 * 1000,
    );
    dio = Dio(baseOptions);
  }

  Future<Response> getData({required String endPoint}) async {
    return await dio.get(endPoint);
  }

  Future<Response> postData({required String endPoint, Map<String, dynamic>? data}) async {
    return await dio.post(endPoint, data: FormData.fromMap(data ?? {}));
  }
}
