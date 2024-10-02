part of 'error.dart';

class ErrorException extends Equatable implements Exception {
  final String? message;

  const ErrorException({required this.message});

  @override
  List<Object?> get props => [message];
}

class FetchDataException extends ErrorException {
  const FetchDataException([message]) : super(message: message);
}

class BadRequestException extends ErrorException {
  const BadRequestException([message]) : super(message: message);
}

class UnauthorizedException extends ErrorException {
  const UnauthorizedException([message]) : super(message: message);
}

class ServerException extends ErrorException {
  const ServerException([message]) : super(message: message);
}

class CacheException extends ErrorException {
  const CacheException([message]) : super(message: message);
}
