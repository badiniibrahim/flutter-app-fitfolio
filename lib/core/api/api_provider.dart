import 'dart:io';

import 'package:deep_pick/deep_pick.dart';
import 'package:dio/dio.dart';
import 'package:fitfolio/core/api/api_http_client.dart';
import 'package:fitfolio/core/api/app_exception.dart';

class ApiProvider {
  static ApiProvider? _instance;
  late ApiHttpClient httpClient;

  ApiProvider._() {
    httpClient = ApiHttpClient();
  }

  static ApiProvider get instance {
    _instance ??= ApiProvider._();

    return _instance!;
  }

  Future<Response> get({
    required String endpoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response = await httpClient.request(
      endpoint,
      method: "GET",
    );

    return _processResponse(response);
  }

  Response _processResponse(Response response) {
    // print("names : ${response.statusCode}");
    //print("names : $response");
    switch (response.statusCode) {
      /// Checking the status code of the response[200].
      case HttpStatus.ok:
        return response;

      /// Checking the status code of the response[400].
      case HttpStatus.badRequest:
        throw BadRequestException(
          pick(
                response.data,
                'status',
              ).asStringOrNull() ??
              response.data['status'],
          pick(
                response.data,
                'status_message',
              ).asStringOrNull() ??
              response.data['status_message'],
          pick(
                response.data,
                'success',
              ).asStringOrNull() ??
              response.data['success'],
        );

      /// Checking the status code of the response[401].
      case HttpStatus.unauthorized:
        throw UnAuthorizedException(
          response.data['status'] ?? "",
          response.data['status_message'] ?? "",
          response.data['success'] ?? false,
        );

      /// Otherwise, throw an error.
      default:
        throw FetchDataException(
          response.data['error']['code'],
          response.data['error']['description'],
          response.data['success'] ?? false,
        );
    }
  }
}
