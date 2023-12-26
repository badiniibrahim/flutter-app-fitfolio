class AppException implements Exception {
  final String status;
  final String statusMessage;
  final bool success;
  AppException(this.status, this.statusMessage, this.success);
}

class BadRequestException extends AppException {
  BadRequestException(
    String status,
    String statusMessage,
    bool success,
  ) : super(status, statusMessage, success);
}

class FetchDataException extends AppException {
  FetchDataException(
    String status,
    String statusMessage,
    bool success,
  ) : super(status, statusMessage, success);
}

class UnAuthorizedException extends AppException {
  UnAuthorizedException(
    String status,
    String statusMessage,
    bool success,
  ) : super(status, statusMessage, success);
}

class NoInternetConnectionException extends AppException {
  NoInternetConnectionException(
      String status, String statusMessage, bool success)
      : super(status, statusMessage, success);
}
