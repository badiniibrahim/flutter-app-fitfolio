import 'package:dio/dio.dart';
import 'package:fitfolio/core/environment.dart';

class ApiHttpClient {
  static get _defaultHeader => {
        "Content-Type": "application/json",
        'X-RapidAPI-Key': 'c74f278d56mshf972cfb821529c2p1f4a6fjsn50cec72d6e7e',
        'X-RapidAPI-Host': 'exercisedb.p.rapidapi.com'
      };

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: Environment.apiUrl,
      connectTimeout: 60 * 10000,
      receiveTimeout: 60 * 10000,
      headers: _defaultHeader,
    ),
  );

  Future<Response> request(
    String path, {
    dynamic body,
    String method = "GET",
    Map<String, dynamic>? headers = const {},
    Map<String, dynamic>? queryParameters = const {},
    bool authenticated = false,
  }) async {
    return _dio.request(
      path,
      data: body,
      queryParameters: queryParameters,
    );
  }
}
