class LoginException implements Exception {
  final String message;

  LoginException(this.message);

  @override
  String toString() {
    return message;
  }
}

class ServerException implements Exception {
  final String message;

  ServerException(this.message);
  @override
  String toString() {
    return message;
  }
}

class UnknownException implements Exception {
  final String message;

  UnknownException(this.message);
  @override
  String toString() {
    return message;
  }
}

class ServerError implements Exception {
  final String message;

  ServerError(this.message);
  @override
  String toString() {
    return message;
  }
}

class NotFoundError implements Exception {
  final String message;

  NotFoundError(this.message);
  @override
  String toString() {
    return message;
  }
}

class NotLoginError implements Exception {
  final String message;

  NotLoginError(this.message);
  @override
  String toString() {
    return message;
  }
}
