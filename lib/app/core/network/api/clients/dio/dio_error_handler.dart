import 'package:dio/dio.dart';
import 'package:fixithub/app/core/network/error/error_model.dart';
import 'package:fixithub/app/core/network/error/exceptions.dart';
import 'package:fixithub/app/core/resources/app_strings.dart';

abstract class DioErrorHandler {
  static handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionError:
        throw ConnectionErrorException(ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.badCertificate:
        throw BadCertificateException(ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.connectionTimeout:
        throw ConnectionTimeoutException(ErrorModel.fromJson(e.response!.data));

      case DioExceptionType.receiveTimeout:
        throw ReceiveTimeoutException(ErrorModel.fromJson(e.response!.data));

      case DioExceptionType.sendTimeout:
        throw SendTimeoutException(ErrorModel.fromJson(e.response!.data));

      case DioExceptionType.badResponse:
        switch (e.response?.statusCode) {
          case 400: // Bad request

            throw BadResponseException(ErrorModel.fromJson(e.response!.data));

          case 401: //unauthorized
            throw UnauthorizedException(ErrorModel.fromJson(e.response!.data));

          case 403: //forbidden
            throw ForbiddenException(ErrorModel.fromJson(e.response!.data));

          case 404: //not found
            throw NotFoundException(ErrorModel.fromJson(e.response!.data));

          case 409: //cofficient

            throw CofficientException(ErrorModel.fromJson(e.response!.data));

          case 504: // Bad request

            throw BadResponseException(ErrorModel(
                success: false,
                error: StringsManager.unKnowError,
                details: e.response!.data));
        }

      case DioExceptionType.cancel:
        throw CancelException(ErrorModel(
            success: false,
            error: StringsManager.unKnowError,
            details: e.response!.data));

      case DioExceptionType.unknown:
        throw UnknownException(ErrorModel(
            success: false,
            error: StringsManager.unKnowError,
            details: e.response!.data));
    }
  }

}