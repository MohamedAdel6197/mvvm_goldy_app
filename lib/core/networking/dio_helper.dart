import 'package:dio/dio.dart';

import 'api_constants.dart';

class DioHelper {
  static late Dio dio;

  static void initDio() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: Duration(seconds: 20),
        receiveTimeout: Duration(seconds: 20),
        // headers: {'Content-Type': 'application/json'},
      ),
    );
  }

  static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? q,
  }) async {
    var response = await dio.get(endPoint, queryParameters: q);
    return response;
  }
}
