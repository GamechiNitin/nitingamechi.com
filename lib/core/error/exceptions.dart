class ServerException implements Exception {
  final String message;
  const ServerException(this.message);
}

class BadRequestException implements Exception {
  final String message;
  BadRequestException(this.message);
}

class UnauthorizedException implements Exception {
  final String message;
  UnauthorizedException(this.message);
}

class NotFoundException implements Exception {
  final String message;
  NotFoundException(this.message);
}

class InternalServerErrorException implements Exception {
  final String message;
  InternalServerErrorException(this.message);
}
