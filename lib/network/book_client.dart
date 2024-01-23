import 'package:dio/dio.dart';

class BookClient {

  static final Dio _dio = Dio();

  BookClient._internal() {
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }
  static final BookClient instance = BookClient._internal();

  Dio get dio => _dio;
}
