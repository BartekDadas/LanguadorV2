

class ConnectionException implements Exception {
  final String message;

  ConnectionException(this.message);
}

class ServerException implements Exception {
  final String message;

  ServerException(this.message);
}