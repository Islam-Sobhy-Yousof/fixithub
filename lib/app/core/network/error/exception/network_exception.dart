import 'package:fixithub/app/core/network/error/exception/exceptions.dart';

abstract class NetworkException extends ServerException {
  NetworkException(super.errorModel);
}

class BadCertificateException extends NetworkException {
  BadCertificateException(super.errorModel);
}

class ConnectionTimeoutException extends NetworkException {
  ConnectionTimeoutException(super.errorModel);
}

class BadResponseException extends NetworkException {
  BadResponseException(super.errorModel);
}

class ReceiveTimeoutException extends NetworkException {
  ReceiveTimeoutException(super.errorModel);
}

class ConnectionErrorException extends NetworkException {
  ConnectionErrorException(super.errorModel);
}

class SendTimeoutException extends NetworkException {
  SendTimeoutException(super.errorModel);
}

class UnauthorizedException extends NetworkException {
  UnauthorizedException(super.errorModel);
}

class ForbiddenException extends NetworkException {
  ForbiddenException(super.errorModel);
}

class NotFoundException extends NetworkException {
  NotFoundException(super.errorModel);
}

class CofficientException extends NetworkException {
  CofficientException(super.errorModel);
}

class CancelException extends NetworkException {
  CancelException(super.errorModel);
}

class UnknownException extends NetworkException {
  UnknownException(super.errorModel);
}
