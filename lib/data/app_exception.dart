class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_message$_prefix';
  }
}

class InternetException extends AppException {
  InternetException([String? message]) : super(message, 'No Internet');
}

class InvalidException extends AppException {
  InvalidException([String? message]) : super(message, 'Internet Server Error');
}

class TimeOutException extends AppException {
  TimeOutException([String? message]) : super(message, 'Request Time Out');
}

class ServerExceptionException extends AppException {
  ServerExceptionException([String? message])
      : super(message, 'Internet Server Error');
}
